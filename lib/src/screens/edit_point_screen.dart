import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../screens.dart';
import 'simple_scaffold.dart';

/// Which coordinate to edit.
enum EditPointPoint {
  /// Edit the x coordinate.
  x,

  /// Edit the y coordinate.
  y,
}

/// A screen to edit [point].
class EditPointScreen extends StatefulWidget {
  /// Create an instance.
  const EditPointScreen({
    required this.point,
    required this.onChanged,
    this.title = 'Edit Point',
    this.editorTitle = 'Point',
    this.defaultModifier = 1,
    this.minValue,
    this.maxValue,
    this.initialEditPoint = EditPointPoint.x,
    this.textStyle,
    super.key,
  });

  /// The point to edit.
  final Point<int> point;

  /// The function to call when [point] changes.
  final void Function(Point<int> point) onChanged;

  /// The title of the [SimpleScaffold].
  final String title;

  /// The title of the edit area.
  final String editorTitle;

  /// The default modifier for [point] when modified with the arrow keys.
  final int defaultModifier;

  /// The minimum value for [point].
  final Point<int>? minValue;

  /// The maximum value for [point].
  final Point<int>? maxValue;

  /// Which point to start editing with the number row.
  final EditPointPoint initialEditPoint;

  /// The text style to use.
  final TextStyle? textStyle;

  /// Create state for this widget.
  @override
  EditPointScreenState createState() => EditPointScreenState();
}

/// State for [EditPointScreen].
class EditPointScreenState extends State<EditPointScreen> {
  /// The current point.
  late Point<int> point;

  /// The current modifier amount.
  late int modifier;

  /// The point to edit with the number row.
  late EditPointPoint editPointPoint;

  /// The current number string.
  late String numberString;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    point = widget.point;
    modifier = widget.defaultModifier;
    editPointPoint = widget.initialEditPoint;
    numberString = '';
  }

  /// Build a widget.
  @override
  Widget build(final BuildContext context) {
    final arrowKeys = <LogicalKeyboardKey, Point<int>>{
      LogicalKeyboardKey.arrowDown: const Point(0, -1),
      LogicalKeyboardKey.arrowUp: const Point(0, 1),
      LogicalKeyboardKey.arrowLeft: const Point(-1, 0),
      LogicalKeyboardKey.arrowRight: const Point(1, 0),
    };
    final numberRow = <LogicalKeyboardKey, String>{
      LogicalKeyboardKey.digit0: '0',
      LogicalKeyboardKey.digit1: '1',
      LogicalKeyboardKey.digit2: '2',
      LogicalKeyboardKey.digit3: '3',
      LogicalKeyboardKey.digit4: '4',
      LogicalKeyboardKey.digit5: '5',
      LogicalKeyboardKey.digit6: '6',
      LogicalKeyboardKey.digit7: '7',
      LogicalKeyboardKey.digit8: '8',
      LogicalKeyboardKey.digit9: '9',
    };
    return CallbackShortcuts(
      bindings: {
        const SingleActivator(LogicalKeyboardKey.pageDown): () {
          setState(() {
            modifier = max(1, modifier - 1);
          });
        },
        const SingleActivator(LogicalKeyboardKey.pageUp): () {
          setState(() {
            modifier++;
          });
        },
        for (final MapEntry(
              key: key,
              value: adjustment,
            ) in arrowKeys.entries)
          SingleActivator(key): () {
            final x = adjustment.x * modifier;
            final y = adjustment.y * modifier;
            adjustPoint(x, y);
          },
        const SingleActivator(LogicalKeyboardKey.escape): () =>
            Navigator.pop(context),
        for (final MapEntry(key: key, value: string) in numberRow.entries)
          SingleActivator(key): () {
            if (numberString == '0' && string == '0') {
              return; // No leading zeros.
            }
            numberString = '$numberString$string';
            final number = int.parse(numberString);
            final minValue = switch (editPointPoint) {
              EditPointPoint.x => widget.minValue?.x ?? number,
              EditPointPoint.y => widget.minValue?.y ?? number,
            };
            final maxValue = switch (editPointPoint) {
              EditPointPoint.x => widget.maxValue?.x ?? number,
              EditPointPoint.y => widget.maxValue?.y ?? number,
            };
            final value = number.clamp(minValue, maxValue);
            final int x;
            final int y;
            switch (editPointPoint) {
              case EditPointPoint.x:
                x = value;
                y = point.y;
              case EditPointPoint.y:
                x = point.x;
                y = value;
            }
            point = Point(x, y);
            adjustPoint(0, 0);
          },
        const CharacterActivator('x'): () {
          numberString = '';
          editPointPoint = EditPointPoint.x;
          setState(() {});
        },
        const CharacterActivator('y'): () {
          numberString = '';
          editPointPoint = EditPointPoint.y;
          setState(() {});
        },
        const CharacterActivator(','): () {
          numberString = '';
          editPointPoint = EditPointPoint.y;
          setState(() {});
        },
      },
      child: SimpleScaffold(
        title: widget.title,
        body: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              autofocus: true,
              title: Text(
                widget.editorTitle,
                style: widget.textStyle,
              ),
              subtitle: Text(
                '${point.x}, ${point.y}',
                style: widget.textStyle,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Modifier',
                style: widget.textStyle,
              ),
              subtitle: Text(
                '$modifier',
                style: widget.textStyle,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Number row will edit',
                style: widget.textStyle,
              ),
              subtitle: Text(
                editPointPoint.name,
                style: widget.textStyle,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  /// Adjust either [xModifier] or [yModifier] of [point].
  void adjustPoint(final int xModifier, final int yModifier) {
    final x = point.x + xModifier;
    final y = point.y + yModifier;
    point = Point(
      x.clamp(widget.minValue?.x ?? x, widget.maxValue?.x ?? x),
      y.clamp(widget.minValue?.y ?? y, widget.maxValue?.y ?? y),
    );
    widget.onChanged(point);
    setState(() {});
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../screens/edit_point_screen.dart';

/// A [ListTile] to display and edit [point].
class PointListTile extends StatelessWidget {
  /// Create an instance.
  const PointListTile({
    required this.point,
    required this.onChanged,
    required this.title,
    this.subtitle,
    this.autofocus = false,
    this.editorTitle = 'Point',
    this.defaultModifier = 1,
    this.minValue,
    this.maxValue,
    this.initialEditPoint = EditPointPoint.x,
    super.key,
  });

  /// The point to show.
  final Point<int> point;

  /// The function to call when [point] changes.
  final void Function(Point<int> point) onChanged;

  /// The title of the [ListTile].
  final String title;

  /// The subtitle of the [ListTile].
  final String? subtitle;

  /// Whether the [ListTile] should be autofocused.
  final bool autofocus;

  /// The title of the resulting editor.
  final String editorTitle;

  /// The default modifier for [point] when modified with the arrow keys.
  final int defaultModifier;

  /// The minimum value for [point].
  final Point<int>? minValue;

  /// The maximum value for [point].
  final Point<int>? maxValue;

  /// Which point to start editing with the number row.
  final EditPointPoint initialEditPoint;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => ListTile(
        autofocus: autofocus,
        title: Text(title),
        subtitle: Text(subtitle ?? '${point.x}, ${point.y}'),
        onTap: () => context.pushWidgetBuilder(
          (final builderContext) => EditPointScreen(
            point: point,
            onChanged: onChanged,
            defaultModifier: defaultModifier,
            editorTitle: title,
            minValue: minValue,
            maxValue: maxValue,
            title: editorTitle,
            initialEditPoint: initialEditPoint,
          ),
        ),
      );
}

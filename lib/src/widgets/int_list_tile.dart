import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/shortcuts.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A list tile to edit the given number [value].
class IntListTile extends StatelessWidget {
  /// Create an instance.
  const IntListTile({
    required this.value,
    required this.onChanged,
    required this.title,
    this.onLongPress,
    this.subtitle,
    this.min,
    this.max,
    this.modifier = 1,
    this.autofocus = false,
    this.labelText = 'Number',
    super.key,
  });

  /// The number to edit.
  final int value;

  /// The function to call when [value] changes.
  final ValueChanged<int> onChanged;

  /// The title of the resulting [ListTile].
  final String title;

  /// What to do when long pressing the [ListTile].
  final GestureLongPressCallback? onLongPress;

  /// The subtitle for the resulting [ListTile].
  ///
  /// If this value is `null`, then [value] will be used.
  final String? subtitle;

  /// The minimum number for [value].
  final int? min;

  /// The maximum number for [value].
  final int? max;

  /// How much this value can be modified with hotkeys.
  final int modifier;

  /// Whether or not the resulting [ListTile] should be autofocused.
  final bool autofocus;

  /// The label text to use.
  final String labelText;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final minValue = min;
    final maxValue = max;
    return PerformableActionsListTile(
      actions: [
        PerformableAction(
          name: 'Increase',
          activator: moveUpShortcut,
          invoke: () {
            final i = value + modifier;
            if (i <= (max ?? i)) {
              onChanged(i);
            }
          },
        ),
        PerformableAction(
          name: 'Decrease',
          activator: moveDownShortcut,
          invoke: () {
            final i = value - modifier;
            if (i >= (min ?? i)) {
              onChanged(i);
            }
          },
        ),
        if (minValue != null)
          PerformableAction(
            name: 'Set minimum',
            activator: moveToStartShortcut,
            invoke: () => onChanged(min ?? value),
          ),
        if (maxValue != null)
          PerformableAction(
            name: 'Set maximum',
            activator: moveToEndShortcut,
            invoke: () => onChanged(max ?? value),
          ),
      ],
      autofocus: autofocus,
      title: Text(title),
      subtitle: Text(subtitle ?? value.toString()),
      onTap: () => context.pushWidgetBuilder(
        (final context) => GetText(
          onDone: (final value) {
            Navigator.pop(context);
            onChanged(int.parse(value));
          },
          labelText: labelText,
          text: value.toString(),
          title: title,
          validator: (final value) {
            if (value == null || value.isEmpty) {
              return 'You must provide a value';
            }
            final i = int.tryParse(value);
            if (i == null) {
              return 'Invalid number';
            }
            if (i < (min ?? i)) {
              return 'You must use a number no less than $min';
            }
            if (i > (max ?? i)) {
              return 'You must use a number no more than $max';
            }
            return null;
          },
        ),
      ),
      onLongPress: onLongPress,
    );
  }
}

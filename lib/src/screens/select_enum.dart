import 'package:backstreets_widgets/screens.dart';
import 'package:flutter/material.dart';

/// A widget for selecting a new [value].
class SelectEnum<T extends Enum> extends StatelessWidget {
  /// Create an instance.
  const SelectEnum({
    required this.values,
    required this.onDone,
    this.value,
    this.actions = const [],
    this.title = 'Select Value',
    this.getCallbackShortcuts,
    super.key,
  });

  /// The function to call when [value] has changed.
  final ValueChanged<T> onDone;

  /// The list of values to choose from.
  final List<T> values;

  /// The current scan code.
  final T? value;

  /// The actions to pass to the resulting [SelectItem].
  final List<Widget> actions;

  /// The title of the widget.
  final String title;

  /// The callback shortcuts to apply to each item.
  final SelectItemCallbackShortcuts<T>? getCallbackShortcuts;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => SelectItem<T>(
        onDone: onDone,
        values: values,
        actions: actions,
        getSearchString: (final value) => value.name,
        getWidget: (final value) => Text(value.name),
        title: title,
        value: value,
        getCallbackShortcuts: getCallbackShortcuts,
      );
}

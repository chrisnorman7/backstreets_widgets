import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/src/screens/get_text.dart' show GetText;
import 'package:flutter/material.dart';

/// A list tile that displays and allows the editing of some text.
class TextListTile extends StatelessWidget {
  /// Create an instance.
  const TextListTile({
    required this.value,
    required this.onChanged,
    required this.header,
    this.actions = const [],
    this.title,
    this.labelText,
    this.validator,
    this.autofocus = false,
    this.onLongPress,
    super.key,
  });

  /// The title of the list tile.
  final String header;

  /// The current value.
  final String value;

  /// The function to be called when the value changes.
  final ValueChanged<String> onChanged;

  /// The actions for the resulting [GetText] widget.
  final List<Widget> actions;

  /// The title of the [GetText] widget.
  final String? title;

  /// The label text for the [GetText] widget.
  final String? labelText;

  /// The validator to use.
  final FormFieldValidator<String?>? validator;

  /// Whether the resulting [ListTile] should be autofocused.
  final bool autofocus;

  /// What to do when long pressing the [ListTile].
  final GestureLongPressCallback? onLongPress;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => ListTile(
        autofocus: autofocus,
        title: Text(header),
        subtitle: Text(value),
        onTap: () => context.pushWidgetBuilder(
          (final context) => GetText(
            onDone: (final value) {
              Navigator.pop(context);
              onChanged(value);
            },
            labelText: labelText ?? title ?? header,
            text: value,
            actions: actions,
            title: title ?? header,
            validator: validator,
          ),
        ),
        onLongPress: onLongPress,
      );
}

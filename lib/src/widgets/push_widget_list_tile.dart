import 'package:flutter/material.dart';

import '../../extensions.dart';

/// A widget that will push a widget then set its state.
class PushWidgetListTile extends StatelessWidget {
  /// Create an instance.
  const PushWidgetListTile({
    required this.title,
    required this.builder,
    this.subtitle,
    this.autofocus = false,
    this.selected = false,
    this.onLongPress,
    this.textStyle,
    super.key,
  });

  /// The title for this widget.
  final String title;

  /// The widget builder to use.
  final WidgetBuilder builder;

  /// The subtitle for this widget.
  ///
  /// If this value is `null`, then no `subtitle` widget will be created.
  final String? subtitle;

  /// Whether this widget should be autofocused.
  final bool autofocus;

  /// Whether or not the resulting [ListTile] is selected.
  final bool selected;

  /// What to do when long pressing the [ListTile].
  final GestureLongPressCallback? onLongPress;

  /// The text style to use.
  final TextStyle? textStyle;

  /// Build a widget.
  @override
  Widget build(final BuildContext context) => ListTile(
        autofocus: autofocus,
        selected: selected,
        title: Text(
          title,
          style: textStyle,
        ),
        subtitle: subtitle == null
            ? null
            : Text(
                subtitle!,
                style: textStyle,
              ),
        onTap: () async {
          await context.pushWidgetBuilder(builder);
        },
        onLongPress: onLongPress,
      );
}

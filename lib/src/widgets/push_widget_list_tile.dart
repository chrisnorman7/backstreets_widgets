import 'package:flutter/material.dart';

import '../../util.dart';

/// A widget that will push a widget then set its state.
class PushWidgetListTile extends StatefulWidget {
  /// Create an instance.
  const PushWidgetListTile({
    required this.title,
    required this.builder,
    this.onSetState,
    this.subtitle,
    this.autofocus = false,
    this.selected = false,
    this.onLongPress,
    super.key,
  });

  /// The title for this widget.
  final String title;

  /// The widget builder to use.
  final WidgetBuilder builder;

  /// The function to call when setting the state for this widget.
  final VoidCallback? onSetState;

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

  /// Create state for this widget.
  @override
  PushWidgetListTileState createState() => PushWidgetListTileState();
}

/// State for [PushWidgetListTile].
class PushWidgetListTileState extends State<PushWidgetListTile> {
  /// Build a widget.
  @override
  Widget build(final BuildContext context) {
    final subtitle = widget.subtitle;
    return ListTile(
      autofocus: widget.autofocus,
      selected: widget.selected,
      title: Text(widget.title),
      subtitle: subtitle == null ? null : Text(subtitle),
      onTap: () async {
        await pushWidget(context: context, builder: widget.builder);
        final f = widget.onSetState;
        if (f != null) {
          f();
        }
        setState(() {});
      },
      onLongPress: widget.onLongPress,
    );
  }
}

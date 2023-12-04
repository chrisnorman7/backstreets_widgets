import 'package:flutter/material.dart';

/// A quicker way to create scaffolds.
class SimpleScaffold extends StatelessWidget {
  /// Create an instance.
  const SimpleScaffold({
    required this.title,
    required this.body,
    this.leading,
    this.actions = const [],
    this.bottom,
    this.bottomNavigationBar,
    this.floatingActionButton,
    super.key,
  });

  /// The value of [AppBar.leading].
  final Widget? leading;

  /// App bar actions.
  final List<Widget> actions;

  /// The title of the scaffold.
  final String title;

  /// The [AppBar.bottom] widget.
  final PreferredSizeWidget? bottom;

  /// The [Scaffold.bottomNavigationBar] widget.
  final Widget? bottomNavigationBar;

  /// The body of the scaffold.
  final Widget body;

  /// The floating action button to use.
  final Widget? floatingActionButton;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: leading,
          actions: actions,
          title: Text(title),
          bottom: bottom,
        ),
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
      );
}

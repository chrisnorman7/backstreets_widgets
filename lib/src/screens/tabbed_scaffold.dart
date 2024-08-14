import 'package:flutter/material.dart';

import 'simple_scaffold.dart';

/// A tab for a [TabbedScaffold].
class TabbedScaffoldTab {
  /// Create an instance.
  const TabbedScaffoldTab({
    required this.title,
    required this.icon,
    required this.builder,
    this.leading,
    this.actions,
    this.floatingActionButton,
  });

  /// The title of the scaffold.
  final String title;

  /// The icon to use for the [BottomNavigationBarItem] that shows this tab.
  final Widget icon;

  /// The function to call to build the widget.
  final WidgetBuilder builder;

  /// The value for [AppBar.leading].
  final Widget? leading;

  /// The actions to use for the app bar.
  final List<Widget>? actions;

  /// The floating action button to use.
  final Widget? floatingActionButton;
}

/// A scaffold with multiple tabs.
class TabbedScaffold extends StatefulWidget {
  /// Create an instance.
  const TabbedScaffold({
    required this.tabs,
    this.initialPageIndex = 0,
    super.key,
  });

  /// The tabs to use.
  final List<TabbedScaffoldTab> tabs;

  /// The initial tab index to use.
  final int initialPageIndex;

  /// Create state for this widget.
  @override
  TabbedScaffoldState createState() => TabbedScaffoldState();
}

/// State for [TabbedScaffold].
class TabbedScaffoldState extends State<TabbedScaffold> {
  late int _pageIndex;

  /// Set the initial index.
  @override
  void initState() {
    super.initState();
    _pageIndex = widget.initialPageIndex;
  }

  /// Build a widget.
  @override
  Widget build(final BuildContext context) {
    final page = widget.tabs[_pageIndex];
    final builder = page.builder;
    return DefaultTabController(
      length: widget.tabs.length,
      child: SimpleScaffold(
        title: page.title,
        leading: page.leading,
        actions: page.actions ?? [],
        bottom: TabBar(
          tabs: widget.tabs
              .map<Tab>(
                (final tab) => Tab(
                  icon: tab.icon,
                  text: tab.title,
                ),
              )
              .toList(),
        ),
        body: Builder(builder: builder),
        floatingActionButton: page.floatingActionButton,
        bottomNavigationBar: BottomNavigationBar(
          items: widget.tabs
              .map(
                (final e) => BottomNavigationBarItem(
                  icon: e.icon,
                  label: e.title,
                ),
              )
              .toList(),
          currentIndex: _pageIndex,
          onTap: (final index) => setState(() => _pageIndex = index),
        ),
      ),
    );
  }

  /// Switch pages.
  void switchPages(final int direction) {
    setState(() {
      _pageIndex = (_pageIndex + direction) % widget.tabs.length;
    });
  }
}

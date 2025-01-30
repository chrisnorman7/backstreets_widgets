import 'dart:math';

import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../game_shortcuts_shortcut.dart';
import '../widgets/game_shortcuts/game_shortcut.dart';
import '../widgets/game_shortcuts/game_shortcuts.dart';
import '../widgets/game_shortcuts/game_shortcuts_help_screen.dart';
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
    this.tooltip,
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

  /// The tooltip to use.
  final String? tooltip;
}

/// A scaffold with multiple tabs.
class TabbedScaffold extends StatefulWidget {
  /// Create an instance.
  const TabbedScaffold({
    required this.tabs,
    this.initialPageIndex = 0,
    this.onPageChange,
    super.key,
  });

  /// The tabs to use.
  final List<TabbedScaffoldTab> tabs;

  /// The initial tab index to use.
  final int initialPageIndex;

  /// A function to call when the index changes.
  final ValueChanged<int>? onPageChange;

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
    final numbers = <GameShortcutsShortcut>[
      GameShortcutsShortcut.digit1,
      GameShortcutsShortcut.digit2,
      GameShortcutsShortcut.digit3,
      GameShortcutsShortcut.digit4,
      GameShortcutsShortcut.digit5,
      GameShortcutsShortcut.digit6,
      GameShortcutsShortcut.digit7,
      GameShortcutsShortcut.digit8,
      GameShortcutsShortcut.digit9,
      GameShortcutsShortcut.digit0,
    ];
    final shortcuts = <GameShortcut>[
      GameShortcut(
        title: 'Switch to the next page',
        shortcut: GameShortcutsShortcut.tab,
        controlKey: true,
        onStart: (final innerContext) => switchPages(1),
      ),
      GameShortcut(
        title: 'Switch to the previous page',
        shortcut: GameShortcutsShortcut.tab,
        controlKey: true,
        shiftKey: true,
        onStart: (final innerContext) => switchPages(-1),
      ),
      for (var i = 0; i < min(widget.tabs.length, numbers.length); i++)
        GameShortcut(
          title: 'Switch to page ${i + 1}',
          shortcut: numbers[i],
          controlKey: true,
          onStart: (final innerContext) => setState(() => _pageIndex = i),
        ),
    ];
    shortcuts.add(
      GameShortcut(
        title: 'Show help',
        shortcut: GameShortcutsShortcut.slash,
        shiftKey: true,
        onStart: (final innerContext) => innerContext.pushWidgetBuilder(
          (final _) => GameShortcutsHelpScreen(shortcuts: shortcuts),
        ),
      ),
    );
    return GameShortcuts(
      shortcuts: shortcuts,
      autofocus: false,
      canRequestFocus: false,
      child: DefaultTabController(
        length: widget.tabs.length,
        child: SimpleScaffold(
          title: page.title,
          leading: page.leading,
          actions: page.actions ?? [],
          body: Builder(builder: builder),
          floatingActionButton: page.floatingActionButton,
          bottomNavigationBar: BottomNavigationBar(
            items: widget.tabs
                .map(
                  (final e) => BottomNavigationBarItem(
                    icon: e.icon,
                    label: e.title,
                    tooltip: e.tooltip,
                  ),
                )
                .toList(),
            currentIndex: _pageIndex,
            onTap: (final index) {
              widget.onPageChange?.call(index);
              setState(() => _pageIndex = index);
            },
          ),
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

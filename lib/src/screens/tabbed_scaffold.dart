import 'dart:math';

import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/shortcuts.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A tab for a [TabbedScaffold].
class TabbedScaffoldTab {
  /// Create an instance.
  const TabbedScaffoldTab({
    required this.title,
    required this.icon,
    required this.child,
    this.leading,
    this.actions,
    this.floatingActionButton,
    this.tooltip,
    this.enabled = true,
    this.autofocus = false,
  });

  /// The title of the scaffold.
  final String title;

  /// The icon to use for the [BottomNavigationBarItem] that shows this tab.
  final Widget icon;

  /// The widget below this widget in the tree.
  final Widget child;

  /// The value for [AppBar.leading].
  final Widget? leading;

  /// The actions to use for the app bar.
  final List<Widget>? actions;

  /// The floating action button to use.
  final Widget? floatingActionButton;

  /// The tooltip to use.
  final String? tooltip;

  /// Whether this page is enabled.
  final bool enabled;

  /// Whether this tab should be autofocused.
  final bool autofocus;
}

/// A scaffold with multiple tabs.
class TabbedScaffold extends StatefulWidget {
  /// Create an instance.
  const TabbedScaffold({required this.tabs, this.onPageChange, super.key});

  /// The tabs to use.
  final List<TabbedScaffoldTab> tabs;

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
    _pageIndex = max(0, widget.tabs.indexWhere((t) => t.autofocus));
  }

  /// Build a widget.
  @override
  Widget build(BuildContext context) {
    final page = widget.tabs[_pageIndex];
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
        controlKey: useControlKey,
        metaKey: useMetaKey,
        onStart: (innerContext) => switchPages(1),
      ),
      GameShortcut(
        title: 'Switch to the previous page',
        shortcut: GameShortcutsShortcut.tab,
        controlKey: useControlKey,
        metaKey: useMetaKey,
        shiftKey: true,
        onStart: (innerContext) => switchPages(-1),
      ),
      for (var i = 0; i < min(widget.tabs.length, numbers.length); i++)
        GameShortcut(
          title: 'Switch to page ${i + 1}',
          shortcut: numbers[i],
          controlKey: useControlKey,
          metaKey: useMetaKey,
          onStart: (innerContext) {
            widget.onPageChange?.call(i);
            setState(() => _pageIndex = i);
          },
        ),
      GameShortcut(
        title: 'Show help',
        shortcut: GameShortcutsShortcut.slash,
        shiftKey: true,
        onStart: (innerContext) {
          final provider = GameShortcuts.of(innerContext);
          innerContext.pushWidgetBuilder(
            (_) => GameShortcutsHelpScreen(shortcuts: provider.shortcuts),
          );
        },
      ),
    ];
    return GameShortcuts(
      shortcuts: shortcuts,
      autofocus: false,
      canRequestFocus: false,
      child: SimpleScaffold(
        title: page.title,
        leading: page.leading,
        actions: page.actions ?? [],
        body: page.child,
        floatingActionButton: page.floatingActionButton,
        bottomNavigationBar: NavigationBar(
          destinations: widget.tabs
              .map(
                (e) => NavigationDestination(
                  icon: e.icon,
                  label: e.title,
                  tooltip: e.tooltip,
                  enabled: e.enabled,
                ),
              )
              .toList(),
          onDestinationSelected: (value) {
            widget.onPageChange?.call(value);
            setState(() => _pageIndex = value);
          },
          selectedIndex: _pageIndex,
        ),
      ),
    );
  }

  /// Switch pages.
  void switchPages(int direction) {
    final pageIndex = (_pageIndex + direction) % widget.tabs.length;
    widget.onPageChange?.call(pageIndex);
    setState(() {
      _pageIndex = pageIndex;
    });
  }
}

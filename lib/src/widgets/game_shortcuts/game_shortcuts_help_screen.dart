import 'package:flutter/material.dart';

import '../keyboard_shortcuts_list.dart';
import 'game_shortcut.dart';

/// A widget which shows game shortcuts.
class GameShortcutsHelpScreen extends StatelessWidget {
  /// Create an instance.
  const GameShortcutsHelpScreen({
    required this.shortcuts,
    this.title = 'Keyboard Shortcuts',
    this.controlKey = 'CTRL',
    this.shiftKey = 'SHIFT',
    this.altKey = 'ALT',
    this.keyJoin = '+',
    super.key,
  });

  /// The shortcuts to show.
  final List<GameShortcut> shortcuts;

  /// The title of the resulting screen.
  final String title;

  /// The name of the control key.
  final String controlKey;

  /// The title of the shift key.
  final String shiftKey;

  /// The title of the alt key.
  final String altKey;

  /// The string which joins keys.
  final String keyJoin;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => KeyboardShortcuts(
        keyboardShortcuts: shortcuts.map((final shortcut) {
          final keys = [
            if (shortcut.controlKey) controlKey,
            if (shortcut.shiftKey) shiftKey,
            if (shortcut.altKey) altKey,
            shortcut.shortcut.name,
          ];
          return KeyboardShortcut(
            description: shortcut.title,
            keyName: keys.join(keyJoin),
          );
        }).toList(),
        title: title,
      );
}

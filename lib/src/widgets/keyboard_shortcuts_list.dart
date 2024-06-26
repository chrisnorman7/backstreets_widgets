import 'dart:io';

import 'package:flutter/material.dart';

import '../../shortcuts.dart';
import '../../util.dart';
import '../screens/simple_scaffold.dart';
import 'cancel.dart';
import 'copy_list_tile.dart';

/// A keyboard shortcut and a description.
class KeyboardShortcut {
  /// Create an instance.
  const KeyboardShortcut({
    required this.description,
    required this.keyName,
    this.control = false,
    this.shift = false,
    this.alt = false,
  });

  /// The name of the primary key.
  final String keyName;

  /// Whether the control key is required.
  final bool control;

  /// Whether the shift key is required.
  final bool shift;

  /// Whether the alt key is required.
  final bool alt;

  /// The description of what this key does.
  final String description;

  /// Returns a string representation of the required key.
  String get keyDescription {
    final keys = <String>[];
    if (control) {
      keys.add(Platform.isMacOS ? 'CMD' : 'Control');
    }
    if (alt) {
      keys.add('Alt');
    }
    if (shift) {
      keys.add('Shift');
    }
    keys.add(keyName);
    return keys.join(' + ');
  }
}

/// A widget for displaying a list of [keyboardShortcuts].
class KeyboardShortcuts extends StatelessWidget {
  /// Create an instance.
  const KeyboardShortcuts({
    required this.keyboardShortcuts,
    this.title = 'Keyboard Shortcuts',
    super.key,
  });

  /// The keyboard shortcuts list to use.
  final List<KeyboardShortcut> keyboardShortcuts;

  /// The title of the resulting [Scaffold].
  final String title;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Cancel(
        child: SimpleScaffold(
          title: title,
          body: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (final context, final index) {
              final keyboardShortcut = keyboardShortcuts[index];
              return CopyListTile(
                autofocus: index == 0,
                title: keyboardShortcut.keyDescription,
                subtitle: keyboardShortcut.description,
              );
            },
            itemCount: keyboardShortcuts.length,
          ),
        ),
      );
}

/// A widget with a list of [keyboardShortcuts] for display.
class WithKeyboardShortcuts extends StatelessWidget {
  /// Create an instance.
  const WithKeyboardShortcuts({
    required this.child,
    required this.keyboardShortcuts,
    super.key,
  });

  /// The widget below this one in the tree.
  final Widget child;

  /// The keyboard shortcuts to show.
  final List<KeyboardShortcut> keyboardShortcuts;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => CallbackShortcuts(
        bindings: {
          helpShortcut: () => pushWidget(
                context: context,
                builder: (final context) =>
                    KeyboardShortcuts(keyboardShortcuts: keyboardShortcuts),
              ),
        },
        child: child,
      );
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../widgets.dart';

/// A widget for handling game [shortcuts].
///
/// Wrap a widget in a [GameShortcuts] widget to easily add game-friendly
/// shortcuts to a game.
///
/// This widget differs from the [CallbackShortcuts] widget because repeated key
/// events are ignored.
class GameShortcuts extends StatelessWidget {
  /// Create an instance.
  const GameShortcuts({
    required this.shortcuts,
    required this.child,
    this.autofocus = true,
    this.canRequestFocus,
    this.skipTraversal,
    this.descendantsAreFocusable,
    this.descendantsAreTraversal,
    this.includeSemantics = true,
    this.focusNode,
    super.key,
  });

  /// Possibly return an instance.
  static InheritedGameShortcuts? maybeOf(final BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedGameShortcuts>();

  /// Return an instance.
  static InheritedGameShortcuts of(final BuildContext context) =>
      maybeOf(context)!;

  /// The widget below this widget in the tree.
  final Widget child;

  /// The shortcuts to handle.
  ///
  /// If the [shortcuts] list is empty, then this widget will do nothing.
  final List<GameShortcut> shortcuts;

  /// Whether the resulting [Focus] widget should be autofocused.
  final bool autofocus;

  /// Passed directly to [Focus].
  final bool? canRequestFocus;

  /// Passed directly to [Focus].
  final bool? skipTraversal;

  /// Passed directly to [Focus].
  final bool? descendantsAreFocusable;

  /// Passed directly to [Focus].
  final bool? descendantsAreTraversal;

  /// Passed directly to [Focus].
  final bool includeSemantics;

  /// The focus node to use.
  ///
  /// Only provide a [focusNode] if you wish to be able to request focus.
  final FocusNode? focusNode;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final keyboard = HardwareKeyboard.instance;
    return InheritedGameShortcuts(
      shortcuts: shortcuts,
      child: Focus(
        autofocus: autofocus,
        canRequestFocus: canRequestFocus,
        descendantsAreFocusable: descendantsAreFocusable,
        descendantsAreTraversable: descendantsAreTraversal,
        includeSemantics: includeSemantics,
        skipTraversal: skipTraversal,
        onKeyEvent: (final node, final event) {
          if (event is KeyRepeatEvent) {
            return KeyEventResult.ignored;
          }
          for (final shortcut in shortcuts) {
            if (shortcut.shortcut.key == event.physicalKey &&
                shortcut.controlKey == keyboard.isControlPressed &&
                shortcut.altKey == keyboard.isAltPressed &&
                shortcut.shiftKey == keyboard.isShiftPressed) {
              if (event is KeyDownEvent) {
                shortcut.onStart?.call(context);
              } else {
                shortcut.onStop?.call(context);
              }
              return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        focusNode: focusNode,
        child: child,
      ),
    );
  }
}

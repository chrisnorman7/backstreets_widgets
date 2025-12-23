import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// An inherited widget for use with [GameShortcuts].
///
/// Instances of [GameShortcutsProvider] are returned by
/// [GameShortcuts.maybeOf] and [GameShortcuts.of].
class GameShortcutsProvider extends InheritedWidget {
  /// Create an instance.
  const GameShortcutsProvider({
    required this.shortcuts,
    required super.child,
    super.key,
  });

  /// The shortcuts to use.
  final List<GameShortcut> shortcuts;

  /// Whether listeners should be notified.
  @override
  bool updateShouldNotify(final GameShortcutsProvider oldWidget) =>
      shortcuts != oldWidget.shortcuts;
}

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
    this.focusNode,
    this.canRequestFocus = true,
    this.includeParentShortcuts = true,
    super.key,
  });

  /// Possibly return an instance.
  static GameShortcutsProvider? maybeOf(final BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<GameShortcutsProvider>();

  /// Return an instance.
  static GameShortcutsProvider of(final BuildContext context) {
    final provider = maybeOf(context);
    if (provider == null) {
      throw StateError('No `GameShortcuts` could be found.');
    }
    return provider;
  }

  /// The widget below this widget in the tree.
  final Widget child;

  /// The shortcuts to handle.
  ///
  /// If the [shortcuts] list is empty, then this widget will do nothing.
  final List<GameShortcut> shortcuts;

  /// Whether the resulting [Focus] widget should be autofocused.
  final bool autofocus;

  /// The focus node to use.
  ///
  /// Only provide a [focusNode] if you wish to be able to request focus.
  final FocusNode? focusNode;

  /// Whether the resulting [Focus] node can request focus.
  final bool canRequestFocus;

  /// Whether to include shortcuts from parent [GameShortcuts] instances.
  final bool includeParentShortcuts;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final keyboard = HardwareKeyboard.instance;
    final allShortcuts = <GameShortcut>[...shortcuts];
    if (includeParentShortcuts) {
      final parent = GameShortcuts.maybeOf(context);
      if (parent != null) {
        allShortcuts.addAll(parent.shortcuts);
      }
    }
    return GameShortcutsProvider(
      shortcuts: allShortcuts,
      child: Builder(
        builder: (final innerContext) => Focus(
          autofocus: autofocus,
          onKeyEvent: (final node, final event) {
            if (event is KeyRepeatEvent) {
              return KeyEventResult.ignored;
            }
            for (final shortcut in allShortcuts) {
              if (shortcut.shortcut.key == event.physicalKey &&
                  shortcut.controlKey == keyboard.isControlPressed &&
                  shortcut.metaKey == keyboard.isMetaPressed &&
                  shortcut.altKey == keyboard.isAltPressed &&
                  shortcut.shiftKey == keyboard.isShiftPressed) {
                if (event is KeyDownEvent) {
                  shortcut.onStart?.call(innerContext);
                } else {
                  shortcut.onStop?.call(innerContext);
                }
                return KeyEventResult.handled;
              }
            }
            return KeyEventResult.ignored;
          },
          focusNode: focusNode,
          canRequestFocus: canRequestFocus,
          child: child,
        ),
      ),
    );
  }
}

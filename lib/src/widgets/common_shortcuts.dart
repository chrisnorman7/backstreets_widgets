import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/shortcuts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A widget which maps the most common shortcuts.
class CommonShortcuts extends StatelessWidget {
  /// Create an instance.
  const CommonShortcuts({
    required this.child,
    this.newCallback,
    this.openCallback,
    this.deleteCallback,
    this.moveUpCallback,
    this.moveDownCallback,
    this.homeCallback,
    this.endCallback,
    this.pageUpCallback,
    this.pageDownCallback,
    this.testCallback,
    this.backspaceCallback,
    this.cancelCallback,
    this.copyText,
    super.key,
  });

  /// The widget below this one in the tree.
  final Widget child;

  /// The function to call with the [newShortcut].
  final VoidCallback? newCallback;

  /// The function to call with the [openShortcut].
  final VoidCallback? openCallback;

  /// The function to call with the [deleteShortcut].
  final VoidCallback? deleteCallback;

  /// The function to call with the [moveUpShortcut].
  final VoidCallback? moveUpCallback;

  /// The function to call with the [moveDownShortcut].
  final VoidCallback? moveDownCallback;

  /// The function to call with the [moveToStartShortcut].
  final VoidCallback? homeCallback;

  /// The function to call with the [moveToEndShortcut].
  final VoidCallback? endCallback;

  /// function to call with the [pageUpShortcut]
  final VoidCallback? pageUpCallback;

  /// The function to be called with the [pageDownShortcut].
  final VoidCallback? pageDownCallback;

  /// The function to call with the [testShortcut].
  final VoidCallback? testCallback;

  /// The function to be called with the [backspaceShortcut].
  final VoidCallback? backspaceCallback;

  /// The function to call when the escape key is pressed.
  final VoidCallback? cancelCallback;

  /// The text to copy with the [copyShortcut].
  final String? copyText;

  /// Build the widget.
  @override
  Widget build(BuildContext context) {
    final newFunction = newCallback;
    final openFunction = openCallback;
    final deleteFunction = deleteCallback;
    final moveUpFunction = moveUpCallback;
    final moveDownFunction = moveDownCallback;
    final homeFunction = homeCallback;
    final endFunction = endCallback;
    final pageUpFunction = pageUpCallback;
    final pageDownFunction = pageDownCallback;
    final testFunction = testCallback;
    final backspaceFunction = backspaceCallback;
    final cancelFunction = cancelCallback;
    final text = copyText;
    return CallbackShortcuts(
      bindings: {
        newShortcut: ?newFunction,
        openShortcut: ?openFunction,
        deleteShortcut: ?deleteFunction,
        moveUpShortcut: ?moveUpFunction,
        moveDownShortcut: ?moveDownFunction,
        moveToStartShortcut: ?homeFunction,
        moveToEndShortcut: ?endFunction,
        pageUpShortcut: ?pageUpFunction,
        pageDownShortcut: ?pageDownFunction,
        testShortcut: ?testFunction,
        backspaceShortcut: ?backspaceFunction,
        const SingleActivator(LogicalKeyboardKey.escape): ?cancelFunction,
        if (text != null) copyShortcut: text.copyToClipboard,
      },
      child: child,
    );
  }
}

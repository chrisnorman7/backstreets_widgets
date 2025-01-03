import 'package:flutter/widgets.dart';

import '../../extensions.dart';
import '../../shortcuts.dart';

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

  /// The text to copy with the [copyShortcut].
  final String? copyText;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
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
    final text = copyText;
    return CallbackShortcuts(
      bindings: {
        if (newFunction != null) newShortcut: newFunction,
        if (openFunction != null) openShortcut: openFunction,
        if (deleteFunction != null) deleteShortcut: deleteFunction,
        if (moveUpFunction != null) moveUpShortcut: moveUpFunction,
        if (moveDownFunction != null) moveDownShortcut: moveDownFunction,
        if (homeFunction != null) moveToStartShortcut: homeFunction,
        if (endFunction != null) moveToEndShortcut: endFunction,
        if (pageUpFunction != null) pageUpShortcut: pageUpFunction,
        if (pageDownFunction != null) pageDownShortcut: pageDownFunction,
        if (testFunction != null) testShortcut: testFunction,
        if (backspaceFunction != null) backspaceShortcut: backspaceFunction,
        if (text != null) copyShortcut: text.copyToClipboard,
      },
      child: child,
    );
  }
}

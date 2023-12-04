import 'package:flutter/widgets.dart';

import '../../shortcuts.dart';
import '../../util.dart';

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

  /// function to call with the [pageUpHotkey]
  final VoidCallback? pageUpCallback;

  /// The function to be called with the [pageDownHotkey].
  final VoidCallback? pageDownCallback;

  /// The function to call with the [testHotkey].
  final VoidCallback? testCallback;

  /// The function to be called with the [backspaceHotkey].
  final VoidCallback? backspaceCallback;

  /// The text to copy with the [copyHotkey].
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
        if (pageUpFunction != null) pageUpHotkey: pageUpFunction,
        if (pageDownFunction != null) pageDownHotkey: pageDownFunction,
        if (testFunction != null) testHotkey: testFunction,
        if (backspaceFunction != null) backspaceHotkey: backspaceFunction,
        if (text != null) copyHotkey: () => setClipboardText(text),
      },
      child: child,
    );
  }
}

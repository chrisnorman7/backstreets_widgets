import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Whether the control key should be used in shortcuts.
final useControlKey = kIsWeb || !Platform.isMacOS;

/// Whether or not the meta key should be used for shortcuts.
final useMetaKey = !kIsWeb && Platform.isMacOS;

/// The "New" shortcut.
final newShortcut = SingleActivator(
  LogicalKeyboardKey.keyN,
  control: useControlKey,
  meta: useMetaKey,
);

/// The "Open" shortcut.
final openShortcut = SingleActivator(
  LogicalKeyboardKey.keyO,
  control: useControlKey,
  meta: useMetaKey,
);

/// The "Close Project" shortcut.
final closeProjectShortcut = SingleActivator(
  LogicalKeyboardKey.keyW,
  control: useControlKey,
  meta: useMetaKey,
);

/// The search shortcut.
const searchShortcut = SingleActivator(LogicalKeyboardKey.slash);

/// The delete shortcut.
const deleteShortcut = SingleActivator(LogicalKeyboardKey.delete);

/// A shortcut to move items up.
const moveUpShortcut = SingleActivator(
  LogicalKeyboardKey.arrowUp,
  alt: true,
);

/// A shortcut to move items down.
const moveDownShortcut = SingleActivator(
  LogicalKeyboardKey.arrowDown,
  alt: true,
);

/// A shortcut to move items left.
const moveLeftShortcut = SingleActivator(
  LogicalKeyboardKey.arrowLeft,
  alt: true,
);

/// A shortcut to move items right.
const moveRightShortcut = SingleActivator(
  LogicalKeyboardKey.arrowRight,
  alt: true,
);

/// A shortcut to move something to the top.
const moveToStartShortcut = SingleActivator(
  LogicalKeyboardKey.home,
  alt: true,
);

/// A shortcut to move something to the end.
const moveToEndShortcut = SingleActivator(
  LogicalKeyboardKey.end,
  alt: true,
);

/// The hotkey for copying things.
final copyHotkey = SingleActivator(
  LogicalKeyboardKey.keyC,
  control: useControlKey,
  meta: useMetaKey,
);

/// The hotkey for testing things.
final testHotkey = SingleActivator(
  LogicalKeyboardKey.keyT,
  control: useControlKey,
  meta: useMetaKey,
  shift: true,
);

/// The page up hotkey.
const pageUpHotkey = SingleActivator(LogicalKeyboardKey.pageUp);

/// The page down hotkey.
const pageDownHotkey = SingleActivator(LogicalKeyboardKey.pageDown);

/// The backspace hotkey.
const backspaceHotkey = SingleActivator(LogicalKeyboardKey.backspace);

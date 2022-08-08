import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/keyboard_shortcuts_list.dart';

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

/// The intent to get help from a [WithKeyboardShortcuts] widget.
final helpShortcut = SingleActivator(
  LogicalKeyboardKey.slash,
  control: useControlKey,
  meta: useMetaKey,
  shift: true,
);

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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/cross_platform_single_activator.dart';

export 'src/cross_platform_single_activator.dart';

/// Whether we are running on something Apple-flavoured.
final runningOnApple =
    [TargetPlatform.iOS, TargetPlatform.macOS].contains(defaultTargetPlatform);

/// Whether the control key should be used in shortcuts.
final useControlKey = !runningOnApple;

/// Whether or not the meta key should be used for shortcuts.
final useMetaKey = runningOnApple;

/// The "New" shortcut.
final newShortcut = CrossPlatformSingleActivator(LogicalKeyboardKey.keyN);

/// The "Open" shortcut.
final openShortcut = CrossPlatformSingleActivator(LogicalKeyboardKey.keyO);

/// The "Close" shortcut.
final closeProjectShortcut = CrossPlatformSingleActivator(
  LogicalKeyboardKey.keyW,
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
final copyShortcut = CrossPlatformSingleActivator(
  LogicalKeyboardKey.keyC,
);

/// The hotkey for copying other things.
final copyOtherShortcut = CrossPlatformSingleActivator(
  LogicalKeyboardKey.keyC,
  shift: true,
);

/// The hotkey for testing things.
final testShortcut = CrossPlatformSingleActivator(
  LogicalKeyboardKey.keyT,
  shift: true,
);

/// The page up hotkey.
const pageUpShortcut = SingleActivator(LogicalKeyboardKey.pageUp);

/// The page down hotkey.
const pageDownShortcut = SingleActivator(LogicalKeyboardKey.pageDown);

/// The backspace hotkey.
const backspaceShortcut = SingleActivator(LogicalKeyboardKey.backspace);

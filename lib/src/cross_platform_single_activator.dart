import 'package:backstreets_widgets/shortcuts.dart';
import 'package:flutter/material.dart';

/// A cross-platform [SingleActivator].
///
/// You only need to use this class if you want a shortcut which uses the
/// control key on Windows, or the command key on Mac OS.
///
/// For example: CTRL/CMD+O for open, CTRL/CMD+S for save.
class CrossPlatformSingleActivator extends SingleActivator {
  /// Create an instance.
  CrossPlatformSingleActivator(
    super.trigger, {
    super.shift,
    super.alt,
    super.numLock,
    super.includeRepeats,
  }) : super(control: useControlKey, meta: useMetaKey);
}

import 'package:backstreets_widgets/shortcuts.dart';
import 'package:backstreets_widgets/typedefs.dart';
import 'package:backstreets_widgets/widgets.dart';

/// A shortcut in a [GameShortcuts] widget.
class GameShortcut {
  /// Create an instance.
  const GameShortcut({
    required this.title,
    required this.shortcut,
    this.onStart,
    this.onStop,
    this.controlKey = false,
    this.metaKey = false,
    this.altKey = false,
    this.shiftKey = false,
  });

  /// Create an instance with [controlKey] or [metaKey] equal to `true`,
  /// depending on which platform we are running on.
  GameShortcut.withControlKey({
    required this.title,
    required this.shortcut,
    this.onStart,
    this.onStop,
    this.altKey = false,
    this.shiftKey = false,
  })  : controlKey = useControlKey,
        metaKey = useMetaKey;

  /// The title of this shortcut.
  ///
  /// This property is hear to make shortcuts clearer, and to make it easier for
  /// help menus to be dynamically generated.
  final String title;

  /// The physical key which will activate this shortcut.
  final GameShortcutsShortcut shortcut;

  /// Whether the control key must be used to trigger this shortcut.
  final bool controlKey;

  /// Whether the meta key must be used to trigger this shortcut.
  final bool metaKey;

  /// Whether the shift key must be used to trigger this shortcut.
  final bool shiftKey;

  /// Whether the alt key must be used to trigger this shortcut.
  final bool altKey;

  /// The function to call when this key is activated.
  ///
  /// This function will be called when the associated key combination is first
  /// pressed.
  ///
  /// If this value is `null`, then nothing will happen.
  ///
  /// Note: Key repeats are not handled.
  final ContextCallback? onStart;

  /// The function to call when this key is deactivated.
  ///
  /// This function will be called when the associated key combination is
  /// released.
  ///
  /// If this value is `null`, then nothing will happen.
  final ContextCallback? onStop;
}

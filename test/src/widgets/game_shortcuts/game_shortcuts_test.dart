import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/src/game_shortcuts_shortcut.dart';
import 'package:backstreets_widgets/src/widgets/game_shortcuts/game_shortcut.dart';
import 'package:backstreets_widgets/src/widgets/game_shortcuts/game_shortcuts.dart';
import 'package:backstreets_widgets/src/widgets/game_shortcuts/game_shortcuts_help_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

/// First 2 shortcuts.
final shortcuts1 = <GameShortcut>[
  const GameShortcut(
    title: 'Do nothing 1',
    shortcut: GameShortcutsShortcut.digit1,
  ),
  const GameShortcut(
    title: 'Do nothing 2',
    shortcut: GameShortcutsShortcut.digit2,
  ),
  const GameShortcut(
    title: 'Do nothing 3',
    shortcut: GameShortcutsShortcut.digit3,
  ),
];

/// Second set of 2 shortcuts.
final shortcuts2 = <GameShortcut>[
  const GameShortcut(
    title: 'Do nothing 4',
    shortcut: GameShortcutsShortcut.digit4,
  ),
  GameShortcut(
    title: 'Help',
    shortcut: GameShortcutsShortcut.slash,
    shiftKey: true,
    onStart: (final innerContext) {
      final widget = GameShortcuts.of(innerContext);
      innerContext.pushWidgetBuilder(
        (_) => GameShortcutsHelpScreen(shortcuts: widget.shortcuts),
      );
    },
  ),
];

class SecondShortcuts extends StatelessWidget {
  /// Create an instance.
  const SecondShortcuts({required this.text, super.key});

  /// The text to show.
  final String text;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final oldShortcuts = context
        .dependOnInheritedWidgetOfExactType<GameShortcutsProvider>();
    expect(oldShortcuts, isNotNull);
    expect(oldShortcuts!.shortcuts.length, shortcuts1.length);

    return GameShortcuts(shortcuts: shortcuts2, child: Text(text));
  }
}

/// The first shortcuts.
class FirstShortcuts extends StatelessWidget {
  /// Create an instance.
  const FirstShortcuts({required this.text, super.key});

  /// The text to use.
  final String text;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => GameShortcuts(
    shortcuts: shortcuts1,
    autofocus: false,
    canRequestFocus: false,
    child: SecondShortcuts(text: text),
  );
}

Future<void> main() async {
  testWidgets('Ensure that `GameShortcuts` can access parent shortcuts.', (
    final tester,
  ) async {
    const data = 'Hello';
    await tester.pumpWidget(
      const MaterialApp(
        home: SimpleScaffold(
          title: 'Test Title',
          body: FirstShortcuts(text: data),
        ),
      ),
    );
    expect(find.text(data), findsOneWidget);
  });

  testWidgets('Ensure the help screen gets all the shortcuts.', (
    final tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SimpleScaffold(
          title: 'Shortcuts',
          body: FirstShortcuts(text: 'Whatever'),
        ),
      ),
    );
    await tester.sendKeyDownEvent(
      LogicalKeyboardKey.shiftLeft,
      physicalKey: PhysicalKeyboardKey.shiftLeft,
    );
    await tester.sendKeyEvent(
      LogicalKeyboardKey.slash,
      character: '?',
      physicalKey: PhysicalKeyboardKey.slash,
    );
    await tester.sendKeyUpEvent(
      LogicalKeyboardKey.shiftLeft,
      physicalKey: PhysicalKeyboardKey.shiftLeft,
    );
    await tester.pumpAndSettle();
    for (final command in [...shortcuts1, ...shortcuts2]) {
      expect(find.text(command.title), findsOneWidget);
    }
  });
}

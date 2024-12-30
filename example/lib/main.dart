import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/shortcuts.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

/// The top-level app class.
class MyApp extends StatelessWidget {
  /// Create an instance.
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => EnsureSemantics(
        child: MaterialApp(
          title: 'Demo of backstreets_widgets',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(),
        ),
      );
}

/// The home page for the application.
class MyHomePage extends StatefulWidget {
  /// Create an instance.
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _counter;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    _counter = 0;
  }

  @override
  Widget build(final BuildContext context) => Cancel(
        onCancel: () => setState(() => _counter = 0),
        child: SimpleScaffold(
          title: 'Demo',
          body: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                PerformableActionsListTile(
                  actions: [
                    PerformableAction(
                      name: 'Increase counter',
                      activator: CrossPlatformSingleActivator(
                        LogicalKeyboardKey.arrowUp,
                      ),
                      invoke: () => setState(() => _counter++),
                    ),
                    PerformableAction(
                      name: 'Decrease counter',
                      activator: CrossPlatformSingleActivator(
                        LogicalKeyboardKey.arrowDown,
                      ),
                      invoke: () => setState(() => _counter--),
                    ),
                    PerformableAction(
                      name: 'Reset counter',
                      activator:
                          const SingleActivator(LogicalKeyboardKey.escape),
                      invoke: () => setState(() => _counter = 0),
                    ),
                  ],
                  title: const Text('Counter'),
                  subtitle: Text('$_counter'),
                  autofocus: true,
                  onTap: () => setState(() => _counter = 0),
                ),
              ],
            ),
          ),
        ),
      );
}

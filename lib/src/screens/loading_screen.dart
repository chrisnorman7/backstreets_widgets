import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:material_ui/material_ui.dart';

/// A widget that displays a loading screen.
class LoadingScreen extends StatelessWidget {
  /// Create an instance.
  const LoadingScreen({super.key});

  /// Build the widget.
  @override
  Widget build(BuildContext context) =>
      const SimpleScaffold(title: 'Loading', body: LoadingWidget());
}

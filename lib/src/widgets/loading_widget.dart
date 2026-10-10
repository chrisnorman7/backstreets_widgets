import 'package:material_ui/material_ui.dart';

/// The loading screen.
class LoadingWidget extends StatelessWidget {
  /// Create an instance.
  const LoadingWidget({super.key});

  /// Build the widget.
  @override
  Widget build(BuildContext context) =>
      const CircularProgressIndicator(semanticsLabel: 'Loading...');
}

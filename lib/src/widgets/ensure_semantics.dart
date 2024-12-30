import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// A widget which ensures semantics for accessibility.
///
/// If [RendererBinding] reports semantics are not enabled, then they will be
/// forced. Forcing semantics on platforms where semantics are already enabled
/// (Windows for example) causes problems.
class EnsureSemantics extends StatefulWidget {
  /// Create an instance.
  const EnsureSemantics({
    required this.child,
    super.key,
  });

  /// The widget below this widget in the tree.
  final Widget child;

  /// Create state for this widget.
  @override
  EnsureSemanticsState createState() => EnsureSemanticsState();
}

/// State for [EnsureSemantics].
class EnsureSemanticsState extends State<EnsureSemantics> {
  /// Initialise state.
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    final rendererBinding = RendererBinding.instance;
    if (!rendererBinding.semanticsEnabled) {
      rendererBinding.ensureSemantics();
    }
  }

  /// Build a widget.
  @override
  Widget build(final BuildContext context) => widget.child;
}

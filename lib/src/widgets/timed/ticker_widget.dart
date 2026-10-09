import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// A widget which will call [onTick] every frame.
class TickerWidget extends StatefulWidget {
  /// Create an instance.
  const TickerWidget({required this.onTick, required this.child, super.key});

  /// The function to call every frame.
  final void Function(Duration d) onTick;

  /// The widget below this widget in the tree.
  final Widget child;

  /// Create state for this widget.
  @override
  TickerWidgetState createState() => TickerWidgetState();
}

/// State for [TickerWidget].
class TickerWidgetState extends State<TickerWidget>
    with SingleTickerProviderStateMixin {
  /// The ticker to use.
  late final Ticker _ticker;

  /// The time since the last tick.
  late Duration _lastElapsed;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    _ticker = createTicker(_onTick)..start();
    _lastElapsed = Duration.zero;
  }

  /// Dispose of the widget.
  @override
  void dispose() {
    super.dispose();
    _ticker.dispose();
  }

  /// Tick every frame.
  void _onTick(Duration elapsed) {
    final d = elapsed - _lastElapsed;
    _lastElapsed = elapsed;
    widget.onTick(d);
  }

  /// Build a widget.
  @override
  Widget build(BuildContext context) => widget.child;
}

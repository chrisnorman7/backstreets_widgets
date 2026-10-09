import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// A widget which will call [onTick] every frame.
class TickerWidget extends StatefulWidget {
  /// Create an instance.
  const TickerWidget({
    required this.onTick,
    required this.child,
    this.tickWhenUnmounted = false,
    super.key,
  });

  /// The function to call every frame.
  ///
  /// The first tick will receive `Duration.zero`.
  final void Function(Duration d) onTick;

  /// The widget below this widget in the tree.
  final Widget child;

  /// Whether [onTick] should run even when the context is not mounted.
  final bool tickWhenUnmounted;

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
  Duration? _lastElapsed;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    _ticker = createTicker(_onTick)..start();
    _lastElapsed = null;
  }

  /// Dispose of the widget.
  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  /// Tick every frame.
  void _onTick(Duration elapsed) {
    if (!mounted && !widget.tickWhenUnmounted) {
      return;
    }
    final lastElapsed = _lastElapsed;
    if (lastElapsed == null) {
      widget.onTick(Duration.zero);
    } else {
      final d = elapsed - lastElapsed;
      widget.onTick(d);
    }
    _lastElapsed = elapsed;
  }

  /// Build a widget.
  @override
  Widget build(BuildContext context) => widget.child;
}

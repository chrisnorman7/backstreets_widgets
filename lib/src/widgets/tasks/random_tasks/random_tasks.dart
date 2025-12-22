import 'dart:async';

import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

/// An inherited version of [RandomTasks].
///
/// Instances of [RandomTasksProvider] will be used when calling
/// [RandomTasks.maybeOf()] and [RandomTasks.of()].
class RandomTasksProvider extends InheritedWidget {
  /// Create an instance.
  const RandomTasksProvider({
    required this.pause,
    required this.resume,
    required super.child,
    super.key,
  });

  /// The function that will pause the [RandomTasks.tasks].
  final VoidCallback pause;

  /// The function that will resume the [RandomTasks.tasks].
  final VoidCallback resume;

  /// Whether this widget should notify listeners.
  @override
  bool updateShouldNotify(covariant final RandomTasksProvider oldWidget) =>
      pause != oldWidget.pause || resume != oldWidget.resume;
}

/// A widget which runs random [tasks].
///
/// This widget is useful for random events, such as playing background sounds,
/// spawning game objects, or moving non-player characters.
///
/// Tasks can be paused by calling [RandomTasksProvider.pause], and resumed
/// with [RandomTasksProvider.resume]. You can obtain an [RandomTasksProvider]
/// instance with the [maybeOf] or [of] static methods.
class RandomTasks extends StatefulWidget {
  /// Create an instance.
  const RandomTasks({required this.tasks, required this.child, super.key});

  /// Possibly provide an instance.
  static RandomTasksProvider? maybeOf(final BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<RandomTasksProvider>();

  /// Provide an instance.
  static RandomTasksProvider of(final BuildContext context) =>
      maybeOf(context)!;

  /// The tasks to use.
  ///
  /// If [tasks] is empty, then this widget will do nothing.
  final List<RandomTask> tasks;

  /// The widget below this widget in the tree.
  final Widget child;

  /// Create state for this widget.
  @override
  RandomTasksState createState() => RandomTasksState();
}

/// State for [RandomTasks].
class RandomTasksState extends State<RandomTasks> {
  /// Whether the random tasks are paused.
  late bool _paused;

  /// Returns `true` if the tasks are running, `false` otherwise.
  bool get isRunning => !_paused;

  /// Returns `true` if the tasks are paused, `false` otherwise.
  bool get isPaused => _paused;

  /// The timers for the tasks.
  late final Map<RandomTask, Timer> timers;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    _paused = false;
    timers = {};
    widget.tasks.forEach(scheduleTask);
  }

  /// Dispose of the widget.
  @override
  void dispose() {
    super.dispose();
    for (final timer in timers.values) {
      timer.cancel();
    }
    timers.clear();
  }

  /// Build a widget.
  @override
  Widget build(final BuildContext context) =>
      RandomTasksProvider(pause: pause, resume: resume, child: widget.child);

  /// Pause the tasks.
  void pause() => _paused = true;

  /// Resume the tasks.
  void resume() => _paused = false;

  /// Run [task].
  void scheduleTask(final RandomTask task) {
    timers[task] = Timer(task.getDuration(), () {
      timers.remove(task);
      if (!_paused) {
        task.onTick();
      }
      scheduleTask(task);
    });
  }
}

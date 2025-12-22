import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A task which will happen every [getDuration].
///
/// Instances of [RandomTask] are used by the [RandomTasks] widget.
class RandomTask {
  /// Create an instance.
  const RandomTask({required this.getDuration, required this.onTick});

  /// The function to call to get the duration.
  final Duration Function() getDuration;

  /// The function to call every [getDuration].
  final VoidCallback onTick;

  /// Returns the hash code.
  @override
  int get hashCode => Object.hashAll([getDuration, onTick]);

  /// Provides equality.
  @override
  bool operator ==(final Object other) {
    if (other is RandomTask) {
      return other.getDuration == getDuration && other.onTick == onTick;
    }
    return super == other;
  }
}

import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../screens/edit_duration_screen.dart';

/// A [ListTile] which shows a [duration].
class DurationListTile extends StatelessWidget {
  /// Create an instance.
  const DurationListTile({
    required this.duration,
    required this.onChanged,
    this.title = 'Duration',
    this.screenTitle = 'Duration',
    this.autofocus = false,
    this.min,
    this.max,
    super.key,
  });

  /// The duration to use.
  final Duration duration;

  /// The function to call when [duration] changes.
  final ValueChanged<Duration> onChanged;

  /// The title of the [ListTile].
  final String title;

  /// The result of the resulting [EditDurationScreen].
  final String screenTitle;

  /// Whether the [ListTile] should be autofocused.
  final bool autofocus;

  /// The min value for [duration].
  final Duration? min;

  /// The max value for [duration].
  final Duration? max;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;
    final milliseconds = duration.inMilliseconds % 1000;
    final parts = [
      if (days > 0) '${days}D',
      if (hours > 0) '${hours}H',
      if (minutes > 0) '${minutes}M',
      if (seconds > 0) '${seconds}S',
      if (milliseconds > 0) '${milliseconds}MS',
    ];
    return ListTile(
      autofocus: autofocus,
      title: Text(title),
      subtitle: Text(parts.join(' ')),
      onTap: () => context.pushWidgetBuilder(
        (final builderContext) => EditDurationScreen(
          duration: duration,
          onChanged: onChanged,
          title: screenTitle,
        ),
      ),
    );
  }
}

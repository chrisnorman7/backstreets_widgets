import 'package:flutter/material.dart';

import '../widgets/buttons/save_button.dart';
import '../widgets/cancel.dart';
import 'simple_scaffold.dart';

/// A widget to edit a [duration].
class EditDurationScreen extends StatefulWidget {
  /// Create an instance.
  const EditDurationScreen({
    required this.duration,
    required this.onChanged,
    this.title = 'Duration',
    super.key,
  });

  /// The duration to edit.
  final Duration duration;

  /// The value to call when [duration] has been edited.
  final ValueChanged<Duration> onChanged;

  /// The title of the screen.
  final String title;

  /// Create state for this widget.
  @override
  EditDurationScreenState createState() => EditDurationScreenState();
}

/// State for [EditDurationScreen].
class EditDurationScreenState extends State<EditDurationScreen> {
  /// The days to use.
  late int days;

  /// The hours to use.
  late int hours;

  /// The minutes to use.
  late int minutes;

  /// The seconds to use.
  late int seconds;

  /// The milliseconds to use.
  late int milliseconds;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    days = widget.duration.inDays;
    hours = widget.duration.inHours % 24;
    minutes = widget.duration.inMinutes % 60;
    seconds = widget.duration.inSeconds % 60;
    milliseconds = widget.duration.inMilliseconds % 1000;
  }

  /// Build a widget.
  @override
  Widget build(final BuildContext context) => Cancel(
        child: SimpleScaffold(
          actions: [
            SaveButton(
              onPressed: () {
                Navigator.pop(context);
                widget.onChanged(
                  Duration(
                    days: days,
                    hours: hours,
                    minutes: minutes,
                    seconds: seconds,
                    milliseconds: milliseconds,
                  ),
                );
              },
            ),
          ],
          title: widget.title,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Slider(
                value: days.toDouble(),
                onChanged: (final value) => setState(
                  () => days = value.round(),
                ),
                label: 'Days',
                autofocus: true,
                max: 364,
                divisions: 364,
                semanticFormatterCallback: (final value) => formatValue(
                  value,
                  'day',
                ),
              ),
              Slider(
                value: hours.toDouble(),
                onChanged: (final value) => setState(
                  () => hours = value.round(),
                ),
                label: 'Hours',
                max: 23,
                divisions: 23,
                semanticFormatterCallback: (final value) => formatValue(
                  value,
                  'hour',
                ),
              ),
              Slider(
                value: minutes.toDouble(),
                onChanged: (final value) => setState(
                  () => minutes = value.round(),
                ),
                label: 'Minutes',
                max: 59,
                divisions: 59,
                semanticFormatterCallback: (final value) => formatValue(
                  value,
                  'minute',
                ),
              ),
              Slider(
                value: seconds.toDouble(),
                onChanged: (final value) => setState(
                  () => seconds = value.round(),
                ),
                label: 'Seconds',
                max: 59,
                divisions: 59,
                semanticFormatterCallback: (final value) => formatValue(
                  value,
                  'second',
                ),
              ),
              Slider(
                value: milliseconds.toDouble(),
                onChanged: (final value) => setState(
                  () => milliseconds = value.floor(),
                ),
                label: 'Milliseconds',
                max: 999,
                divisions: 999,
                semanticFormatterCallback: (final value) => formatValue(
                  value,
                  'millisecond',
                ),
              ),
            ],
          ),
        ),
      );

  /// Format the given [value].
  String formatValue(final double value, final String single) {
    final actual = value.round();
    return '$actual ${actual == 1 ? single : "${single}s"}';
  }
}

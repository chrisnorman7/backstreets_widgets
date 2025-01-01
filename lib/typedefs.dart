import 'package:flutter/material.dart';

/// The type of a function which receives a build context as its only argument.
typedef ContextCallback = void Function(BuildContext innerContext);

/// The type of a function which takes both a build [context] and a [value].
typedef BuildContextValueBuilder<T> = Widget Function(
  BuildContext context,
  T value,
);

/// The type of a function to instigate a transition.
typedef OnTransition = void Function(Duration duration, WidgetBuilder builder);

/// The type of a function which produces an error widget.
typedef ErrorWidgetCallback = Widget Function(
  Object error,
  StackTrace? stackTrace,
);

import 'package:flutter/material.dart';

/// The type of a function which receives a build context as its only argument.
typedef ContextCallback = void Function(BuildContext innerContext);

/// The type of a function which takes both a build [context] and a [value].
typedef BuildContextValueBuilder<T> = Widget Function(
  BuildContext context,
  T value,
);

import 'dart:async';

import 'package:flutter/material.dart';

/// A widget to load some data, so that it is available to all child widgets.
class DataScope<T> extends StatefulWidget {
  /// Create an instance.
  const DataScope({
    required this.loadData,
    required this.child,
    super.key,
  });

  /// Maybe provide the nearest instance.
  static DataScopeState<T>? maybeOf<T>(final BuildContext context) =>
      context.findAncestorStateOfType<DataScopeState<T>>();

  /// Returns the nearest instance.
  static DataScopeState<T> of<T>(final BuildContext context) =>
      DataScope.maybeOf(context)!;

  /// The function to call to load the data.
  final FutureOr<T> Function() loadData;

  /// The widget below this widget in the tree.
  final Widget child;

  /// Create state for this widget.
  @override
  DataScopeState createState() => DataScopeState();
}

/// State for [DataScope].
class DataScopeState<T> extends State<DataScope<T>> {
  /// The data which has been loaded.
  late T data;

  /// Whether [data] has been loaded yet.
  late bool dataLoaded;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    dataLoaded = false;
    _loadData();
  }

  /// Build a widget.
  @override
  Widget build(final BuildContext context) => widget.child;

  /// Load [data].
  Future<void> _loadData() async {
    final d = await widget.loadData();
    data = d;
    dataLoaded = true;
  }
}

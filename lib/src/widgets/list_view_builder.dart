import 'package:flutter/material.dart';

/// A simpler version of [ListView.builder].
class ListViewBuilder extends StatelessWidget {
  /// Create an instance.
  const ListViewBuilder({
    required this.itemBuilder,
    required this.itemCount,
    this.reverse = false,
    super.key,
  });

  /// The function to use to build the [ListView].
  final IndexedWidgetBuilder itemBuilder;

  /// The number of items to work with.
  final int itemCount;

  /// Whether or not the [ListView] should be reversed.
  final bool reverse;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => ListView.builder(
        itemBuilder: itemBuilder,
        itemCount: itemCount,
        shrinkWrap: true,
        reverse: reverse,
      );
}

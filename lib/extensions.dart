import 'package:flutter/material.dart';

import 'util.dart';

/// Useful methods for build contexts.
extension BackstreetsWidgetsBuildContextExtension on BuildContext {
  /// Push a widget [builder].
  Future<void> pushWidgetBuilder(final WidgetBuilder builder) =>
      pushWidget(context: this, builder: builder);
}

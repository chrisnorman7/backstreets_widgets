import 'package:flutter/material.dart';

/// A widget that can be cancelled with the escape key.
class Cancel extends StatelessWidget {
  /// Create an instance.
  const Cancel({
    required this.child,
    this.onCancel,
    super.key,
  });

  /// The widget below this one in the tree.
  final Widget child;

  /// The function to call to cancel this widget.
  ///
  /// By default, this function will simply call [Navigator.pop].
  final VoidCallback? onCancel;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final func = onCancel;
    return Actions(
      actions: {
        DismissIntent: CallbackAction(
          onInvoke: (final intent) {
            if (func == null) {
              Navigator.pop(context);
            } else {
              func();
            }
            return null;
          },
        ),
      },
      child: child,
    );
  }
}

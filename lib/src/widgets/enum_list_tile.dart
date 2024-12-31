import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import '../../extensions.dart';

/// A [ListTile] which shows and allows selecting a new [Enum] [value].
class EnumListTile<T extends Enum> extends StatelessWidget {
  /// Create an instance.
  const EnumListTile({
    required this.title,
    required this.values,
    required this.onChanged,
    this.value,
    this.autofocus = false,
    this.emptyValue = 'Not set',
    this.nullable = true,
    this.getEnumValueName,
    super.key,
  });

  /// The values of the [Enum] to show.
  final List<T> values;

  /// The function to call when [value] changes.
  final ValueChanged<T?> onChanged;

  /// The current value to show.
  final T? value;

  /// The title of the [ListTile].
  final String title;

  /// The text to show when [value] is `null`.
  final String emptyValue;

  /// Whether the [ListTile] should be autofocused.
  final bool autofocus;

  /// Whether [value] can be set to `null`.
  final bool nullable;

  /// The function to use to get the names of the individual enum [values].
  ///
  /// If [getEnumValueName] is `null`, then `T.name` will be used.
  final String Function(T? value)? getEnumValueName;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Semantics(
        customSemanticsActions: {
          for (final v in values.where((final e) => e != value))
            CustomSemanticsAction(label: _getValueName(v)): () => onChanged(v),
          if (nullable)
            CustomSemanticsAction(label: emptyValue): () => onChanged(null),
        },
        child: MenuAnchor(
          menuChildren: [
            if (nullable)
              MenuItemButton(
                autofocus: value == null,
                child: Text(emptyValue),
                onPressed: () => onChanged(null),
              ),
            ...values.map(
              (final v) => MenuItemButton(
                autofocus: v == value,
                child: Text(_getValueName(v)),
                onPressed: () => onChanged(v),
              ),
            ),
          ],
          builder: (final context, final controller, final child) => ListTile(
            autofocus: autofocus,
            title: Text(title),
            subtitle: Text(_getValueName(value)),
            onTap: controller.toggle,
          ),
        ),
      );

  /// Get the name of [value].
  String _getValueName(final T? value) {
    if (value == null) {
      return emptyValue;
    }
    return getEnumValueName?.call(value) ?? value.name;
  }
}
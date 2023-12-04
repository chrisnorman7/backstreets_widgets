import 'package:flutter/material.dart';

import '../widgets/cancel.dart';
import '../widgets/searchable_list_view.dart';
import 'simple_scaffold.dart';

/// The type of a function which returns callback shortcuts for a given value.
typedef SelectItemCallbackShortcuts<T> = Map<ShortcutActivator, VoidCallback>
    Function(T value);

/// A widget for selecting a new [value] from a list of [values].
class SelectItem<T> extends StatelessWidget {
  /// Create an instance.
  const SelectItem({
    required this.values,
    required this.onDone,
    this.value,
    this.actions = const [],
    this.title = 'Select Item',
    this.getSearchString,
    this.getWidget,
    this.shouldPop = true,
    this.getCallbackShortcuts,
    super.key,
  });

  /// The values to select from.
  final List<T> values;

  /// The function to call when a new [value] is selected.
  final ValueChanged<T> onDone;

  /// The current value;
  final T? value;

  /// The title of this widget.
  final String title;

  /// The actions to use for this widget.
  final List<Widget> actions;

  /// The function to use to get a search string from a value in [values].
  final String Function(T value)? getSearchString;

  /// The function to use to get a `title` for the resulting [ListTile]s.
  ///
  /// If this value is `null`, then `toString` will be used.
  final Widget Function(T value)? getWidget;

  /// Whether this widget should pop itself before calling [onDone].
  final bool shouldPop;

  /// Return a map of callback shortcuts for each value.
  final SelectItemCallbackShortcuts<T>? getCallbackShortcuts;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final getSearchStringFunction = getSearchString;
    final getWidgetFunction = getWidget;
    return Cancel(
      child: SimpleScaffold(
        actions: actions,
        title: title,
        body: BuiltSearchableListView<T>(
          items: values,
          builder: (final context, final index) {
            final item = values[index];
            final listTile = ListTile(
              autofocus: item == value || (value == null && index == 0),
              selected: item == value,
              title: getWidgetFunction == null
                  ? Text(item.toString())
                  : getWidgetFunction(item),
              onTap: () {
                if (shouldPop) {
                  Navigator.pop(context);
                }
                onDone(
                  item,
                );
              },
            );
            final bindings = getCallbackShortcuts?.call(item);
            return SearchableListTile(
              searchString:
                  getSearchStringFunction?.call(item) ?? item.toString(),
              child: bindings == null
                  ? listTile
                  : CallbackShortcuts(
                      bindings: bindings,
                      child: listTile,
                    ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:backstreets_widgets/shortcuts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A list tile that can be searched for within a [SearchableListView].
class SearchableListTile {
  /// Create an instance.
  const SearchableListTile({
    required this.searchString,
    required this.child,
  });

  /// The search string that will find this instance.
  final String searchString;

  /// The child to use.
  final Widget child;
}

/// A [ListView] that can be searched.
class SearchableListView extends StatefulWidget {
  /// Create an instance.
  const SearchableListView({
    required this.children,
    super.key,
  });

  /// The list of children.
  final List<SearchableListTile> children;

  /// Create state.
  @override
  State<SearchableListView> createState() => _SearchableListViewState();
}

class _SearchableListViewState extends State<SearchableListView> {
  late final TextEditingController _controller;
  late final FocusNode _textFieldFocusNode;
  String? _searchString;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _textFieldFocusNode = FocusNode();
  }

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final searchString = _searchString;
    final List<SearchableListTile> results;
    if (searchString == null) {
      results = widget.children;
    } else {
      results = widget.children
          .where(
            (final element) => element.searchString.toLowerCase().contains(
                  searchString.toLowerCase(),
                ),
          )
          .toList();
    }
    return ListView.builder(
      itemBuilder: (final context, final index) {
        if (index == 0) {
          var labelText = 'Search';
          if (searchString != null) {
            labelText = '$labelText (${results.length} result';
            if (results.length == 1) {
              labelText = '$labelText)';
            } else {
              labelText = '${labelText}s)';
            }
          }
          return CallbackShortcuts(
            bindings: {
              const SingleActivator(LogicalKeyboardKey.escape):
                  clearSearchField,
            },
            child: ListTile(
              title: TextField(
                controller: _controller,
                focusNode: _textFieldFocusNode,
                decoration: InputDecoration(
                  labelText: labelText,
                ),
                onChanged: (final value) => setState(
                  () => _searchString = value.isEmpty ? null : value,
                ),
              ),
              subtitle: _controller.text.isEmpty
                  ? null
                  : IconButton(
                      onPressed: () {
                        _textFieldFocusNode.requestFocus();
                        clearSearchField();
                      },
                      icon: const Icon(
                        Icons.clear_outlined,
                        semanticLabel: 'Clear',
                      ),
                    ),
            ),
          );
        }
        return CallbackShortcuts(
          bindings: {
            searchShortcut: () {
              _textFieldFocusNode.requestFocus();
              _controller.selection = TextSelection(
                baseOffset: 0,
                extentOffset: _controller.text.length,
              );
            },
          },
          child: results[index - 1].child,
        );
      },
      itemCount: results.length + 1,
    );
  }

  /// Clear the search field.
  void clearSearchField() => setState(() {
        _controller.text = '';
        _searchString = null;
      });

  /// Dispose of things.
  @override
  void dispose() {
    super.dispose();
    _textFieldFocusNode.dispose();
    _controller.dispose();
  }
}

/// A widget that uses the given [builder] to build a [SearchableListView]
/// instance.
class BuiltSearchableListView<T> extends StatelessWidget {
  /// Create an instance.
  const BuiltSearchableListView({
    required this.items,
    required this.builder,
    super.key,
  });

  /// The items to build from.
  final Iterable<T> items;

  /// The function to build with.
  final SearchableListTile Function(BuildContext context, int index) builder;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final children = [
      for (var i = 0; i < items.length; i++) builder(context, i),
    ];
    return SearchableListView(children: children);
  }
}

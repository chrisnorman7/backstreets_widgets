# Backstreets Widgets

## Description

This library contains widgets I personally find useful in my own projects. I uploaded this library to prevent the number of times I had to copy and paste the files it contains.

## Package Contents

### Widgets

Widgets are widgets that should be used within a `Scaffold` widget.

- `Cancel`: A widget that traps the escape key to do something useful. By default it calls `context.pop`.
- `CenterText`: A widget that wraps a `Text` widget inside `Center` and `Focus` widgets.
- `DoubleListTile`: A `ListTile` which displays a `double` value. The value can be changed with shortcut keys.
- `GetText`: A widget that gets text with a simple `OnChanged` callback.
- `IntListTile`: Similar to `DoubleListTile`, except deals with integers.
- `KeyboardShortcuts`: A widget for displaying a list of `KeyboardShortcut` instances.
- `WithKeyboardShortcuts`: A widget that shows a `KeyboardShortcuts` list with the press of a key.
- `PushWidgetListTile`: A `ListTile` which pushes a widget when tapped.
- `SearchableListView`: A list view which is searchable, with a `TextFormField` located at the top of the list. Shortcuts can be used to navigate the list.
- `TextListTile`: A `ListTile` which displays some text. The text can be edited with `GetText` when the `ListTile` is tapped.

### Screens

Screens are widgets with `Scaffold`s at their root.

- `SelectEnum` a `SelectItem` widget which works exclusively with enums.
- `SelectItem`: a `SearchableListView` which allows the selection of a single item.
- `SimpleScaffold`: A `Scaffold` widget with a simplified syntax.
- `TabbedScaffold`: A `Scaffold` widget which displays multiple tabs at the bottom, and optionally at the top.

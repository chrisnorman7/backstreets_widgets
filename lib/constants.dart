import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Whether the control key should be used in shortcuts.
final useControlKey = kIsWeb || !Platform.isMacOS;

/// Whether or not the meta key should be used for shortcuts.
final useMetaKey = !kIsWeb && Platform.isMacOS;

/// The new icon to use.
const addIcon = Icon(
  Icons.add,
  semanticLabel: 'Add',
);

/// The close icon to use.
const closeIcon = Icon(
  Icons.close,
  semanticLabel: 'Close',
);

/// The save icon to use.
const saveIcon = Icon(
  Icons.save,
  semanticLabel: 'Save',
);

/// The delete icon to use.
const deleteIcon = Icon(
  Icons.delete,
  semanticLabel: 'Delete',
);

/// The icon to use to denote a series of files.
const filesIcon = Icon(
  Icons.storage,
  semanticLabel: 'Files',
);

/// The settings icon to use.
const settingsIcon = Icon(
  Icons.settings,
  semanticLabel: 'Settings',
);

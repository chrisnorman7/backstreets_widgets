// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/services.dart';

/// Hold information about [PhysicalKeyboardKey]s.
class GameShortcutsShortcut {
  /// Create an instance.
  const GameShortcutsShortcut({
    required this.key,
    required this.name,
  });

  /// The represented key.
  final PhysicalKeyboardKey key;

  /// The name of this key.
  final String name;

  /// Represents the location of the "Abort" key on a generalized keyboard.
  static const GameShortcutsShortcut abort = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.abort,
    name: 'abort',
  );

  /// Represents the location of the "Again" key on a generalized keyboard.
  static const GameShortcutsShortcut again = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.again,
    name: 'again',
  );

  /// Represents the location of the "Alt Left" key on a generalized keyboard.
  static const GameShortcutsShortcut altLeft = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.altLeft,
    name: 'altLeft',
  );

  /// Represents the location of the "Alt Right" key on a generalized keyboard.
  static const GameShortcutsShortcut altRight = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.altRight,
    name: 'altRight',
  );

  /// Represents the location of the "Arrow Down" key on a generalized keyboard.
  static const GameShortcutsShortcut arrowDown = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.arrowDown,
    name: 'arrowDown',
  );

  /// Represents the location of the "Arrow Left" key on a generalized keyboard.
  static const GameShortcutsShortcut arrowLeft = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.arrowLeft,
    name: 'arrowLeft',
  );

  /// Represents the location of the "Arrow Right" key on a generalizedkeyboard.
  static const GameShortcutsShortcut arrowRight = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.arrowRight,
    name: 'arrowRight',
  );

  /// Represents the location of the "Arrow Up" key on a generalized keyboard.
  static const GameShortcutsShortcut arrowUp = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.arrowUp,
    name: 'arrowUp',
  );

  /// Represents the location of the "Audio Volume Down" key on a generalizedkeyboard.
  static const GameShortcutsShortcut audioVolumeDown = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.audioVolumeDown,
    name: 'audioVolumeDown',
  );

  /// Represents the location of the "Audio Volume Mute" key on a generalizedkeyboard.
  static const GameShortcutsShortcut audioVolumeMute = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.audioVolumeMute,
    name: 'audioVolumeMute',
  );

  /// Represents the location of the "Audio Volume Up" key on a generalizedkeyboard.
  static const GameShortcutsShortcut audioVolumeUp = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.audioVolumeUp,
    name: 'audioVolumeUp',
  );

  /// Represents the location of the "Backquote" key on a generalized keyboard.
  static const GameShortcutsShortcut backquote = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.backquote,
    name: 'backquote',
  );

  /// Represents the location of the "Backslash" key on a generalized keyboard.
  static const GameShortcutsShortcut backslash = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.backslash,
    name: 'backslash',
  );

  /// Represents the location of the "Backspace" key on a generalized keyboard.
  static const GameShortcutsShortcut backspace = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.backspace,
    name: 'backspace',
  );

  /// Represents the location of the "Bass Boost" key on a generalized keyboard.
  static const GameShortcutsShortcut bassBoost = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.bassBoost,
    name: 'bassBoost',
  );

  /// Represents the location of the "Bracket Left" key on a generalizedkeyboard.
  static const GameShortcutsShortcut bracketLeft = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.bracketLeft,
    name: 'bracketLeft',
  );

  /// Represents the location of the "Bracket Right" key on a generalizedkeyboard.
  static const GameShortcutsShortcut bracketRight = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.bracketRight,
    name: 'bracketRight',
  );

  /// Represents the location of the "Brightness Auto" key on a generalizedkeyboard.
  static const GameShortcutsShortcut brightnessAuto = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.brightnessAuto,
    name: 'brightnessAuto',
  );

  /// Represents the location of the "Brightness Down" key on a generalizedkeyboard.
  static const GameShortcutsShortcut brightnessDown = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.brightnessDown,
    name: 'brightnessDown',
  );

  /// Represents the location of the "Brightness Maximum" key on a generalizedkeyboard.
  static const GameShortcutsShortcut brightnessMaximum = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.brightnessMaximum,
    name: 'brightnessMaximum',
  );

  /// Represents the location of the "Brightness Minimum" key on a generalizedkeyboard.
  static const GameShortcutsShortcut brightnessMinimum = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.brightnessMinimum,
    name: 'brightnessMinimum',
  );

  /// Represents the location of the "Brightness Toggle" key on a generalizedkeyboard.
  static const GameShortcutsShortcut brightnessToggle = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.brightnessToggle,
    name: 'brightnessToggle',
  );

  /// Represents the location of the "Brightness Up" key on a generalizedkeyboard.
  static const GameShortcutsShortcut brightnessUp = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.brightnessUp,
    name: 'brightnessUp',
  );

  /// Represents the location of the "Browser Back" key on a generalizedkeyboard.
  static const GameShortcutsShortcut browserBack = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.browserBack,
    name: 'browserBack',
  );

  /// Represents the location of the "Browser Favorites" key on a generalizedkeyboard.
  static const GameShortcutsShortcut browserFavorites = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.browserFavorites,
    name: 'browserFavorites',
  );

  /// Represents the location of the "Browser Forward" key on a generalizedkeyboard.
  static const GameShortcutsShortcut browserForward = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.browserForward,
    name: 'browserForward',
  );

  /// Represents the location of the "Browser Home" key on a generalizedkeyboard.
  static const GameShortcutsShortcut browserHome = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.browserHome,
    name: 'browserHome',
  );

  /// Represents the location of the "Browser Refresh" key on a generalizedkeyboard.
  static const GameShortcutsShortcut browserRefresh = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.browserRefresh,
    name: 'browserRefresh',
  );

  /// Represents the location of the "Browser Search" key on a generalizedkeyboard.
  static const GameShortcutsShortcut browserSearch = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.browserSearch,
    name: 'browserSearch',
  );

  /// Represents the location of the "Browser Stop" key on a generalizedkeyboard.
  static const GameShortcutsShortcut browserStop = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.browserStop,
    name: 'browserStop',
  );

  /// Represents the location of the "Caps Lock" key on a generalized keyboard.
  static const GameShortcutsShortcut capsLock = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.capsLock,
    name: 'capsLock',
  );

  /// Represents the location of the "Channel Down" key on a generalizedkeyboard.
  static const GameShortcutsShortcut channelDown = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.channelDown,
    name: 'channelDown',
  );

  /// Represents the location of the "Channel Up" key on a generalized keyboard.
  static const GameShortcutsShortcut channelUp = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.channelUp,
    name: 'channelUp',
  );

  /// Represents the location of the "Close" key on a generalized keyboard.
  static const GameShortcutsShortcut close = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.close,
    name: 'close',
  );

  /// Represents the location of the "Closed Caption Toggle" key on ageneralized keyboard.
  static const GameShortcutsShortcut closedCaptionToggle =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.closedCaptionToggle,
    name: 'closedCaptionToggle',
  );

  /// Represents the location of the "Comma" key on a generalized keyboard.
  static const GameShortcutsShortcut comma = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.comma,
    name: 'comma',
  );

  /// Represents the location of the "Context Menu" key on a generalizedkeyboard.
  static const GameShortcutsShortcut contextMenu = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.contextMenu,
    name: 'contextMenu',
  );

  /// Represents the location of the "Control Left" key on a generalizedkeyboard.
  static const GameShortcutsShortcut controlLeft = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.controlLeft,
    name: 'controlLeft',
  );

  /// Represents the location of the "Control Right" key on a generalizedkeyboard.
  static const GameShortcutsShortcut controlRight = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.controlRight,
    name: 'controlRight',
  );

  /// Represents the location of the "Convert" key on a generalized keyboard.
  static const GameShortcutsShortcut convert = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.convert,
    name: 'convert',
  );

  /// Represents the location of the "Copy" key on a generalized keyboard.
  static const GameShortcutsShortcut copy = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.copy,
    name: 'copy',
  );

  /// Represents the location of the "Cut" key on a generalized keyboard.
  static const GameShortcutsShortcut cut = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.cut,
    name: 'cut',
  );

  /// Represents the location of the "Delete" key on a generalized keyboard.
  static const GameShortcutsShortcut delete = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.delete,
    name: 'delete',
  );

  /// Represents the location of the "Digit 0" key on a generalized keyboard.
  static const GameShortcutsShortcut digit0 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit0,
    name: 'digit0',
  );

  /// Represents the location of the "Digit 1" key on a generalized keyboard.
  static const GameShortcutsShortcut digit1 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit1,
    name: 'digit1',
  );

  /// Represents the location of the "Digit 2" key on a generalized keyboard.
  static const GameShortcutsShortcut digit2 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit2,
    name: 'digit2',
  );

  /// Represents the location of the "Digit 3" key on a generalized keyboard.
  static const GameShortcutsShortcut digit3 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit3,
    name: 'digit3',
  );

  /// Represents the location of the "Digit 4" key on a generalized keyboard.
  static const GameShortcutsShortcut digit4 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit4,
    name: 'digit4',
  );

  /// Represents the location of the "Digit 5" key on a generalized keyboard.
  static const GameShortcutsShortcut digit5 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit5,
    name: 'digit5',
  );

  /// Represents the location of the "Digit 6" key on a generalized keyboard.
  static const GameShortcutsShortcut digit6 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit6,
    name: 'digit6',
  );

  /// Represents the location of the "Digit 7" key on a generalized keyboard.
  static const GameShortcutsShortcut digit7 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit7,
    name: 'digit7',
  );

  /// Represents the location of the "Digit 8" key on a generalized keyboard.
  static const GameShortcutsShortcut digit8 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit8,
    name: 'digit8',
  );

  /// Represents the location of the "Digit 9" key on a generalized keyboard.
  static const GameShortcutsShortcut digit9 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.digit9,
    name: 'digit9',
  );

  /// Represents the location of the "Display Toggle Int Ext" key on ageneralized keyboard.
  static const GameShortcutsShortcut displayToggleIntExt =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.displayToggleIntExt,
    name: 'displayToggleIntExt',
  );

  /// Represents the location of the "Eject" key on a generalized keyboard.
  static const GameShortcutsShortcut eject = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.eject,
    name: 'eject',
  );

  /// Represents the location of the "End" key on a generalized keyboard.
  static const GameShortcutsShortcut end = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.end,
    name: 'end',
  );

  /// Represents the location of the "Enter" key on a generalized keyboard.
  static const GameShortcutsShortcut enter = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.enter,
    name: 'enter',
  );

  /// Represents the location of the "Equal" key on a generalized keyboard.
  static const GameShortcutsShortcut equal = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.equal,
    name: 'equal',
  );

  /// Represents the location of the "Escape" key on a generalized keyboard.
  static const GameShortcutsShortcut escape = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.escape,
    name: 'escape',
  );

  /// Represents the location of the "Exit" key on a generalized keyboard.
  static const GameShortcutsShortcut exit = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.exit,
    name: 'exit',
  );

  /// Represents the location of the "F1" key on a generalized keyboard.
  static const GameShortcutsShortcut f1 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f1,
    name: 'f1',
  );

  /// Represents the location of the "F2" key on a generalized keyboard.
  static const GameShortcutsShortcut f2 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f2,
    name: 'f2',
  );

  /// Represents the location of the "F3" key on a generalized keyboard.
  static const GameShortcutsShortcut f3 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f3,
    name: 'f3',
  );

  /// Represents the location of the "F4" key on a generalized keyboard.
  static const GameShortcutsShortcut f4 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f4,
    name: 'f4',
  );

  /// Represents the location of the "F5" key on a generalized keyboard.
  static const GameShortcutsShortcut f5 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f5,
    name: 'f5',
  );

  /// Represents the location of the "F6" key on a generalized keyboard.
  static const GameShortcutsShortcut f6 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f6,
    name: 'f6',
  );

  /// Represents the location of the "F7" key on a generalized keyboard.
  static const GameShortcutsShortcut f7 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f7,
    name: 'f7',
  );

  /// Represents the location of the "F8" key on a generalized keyboard.
  static const GameShortcutsShortcut f8 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f8,
    name: 'f8',
  );

  /// Represents the location of the "F9" key on a generalized keyboard.
  static const GameShortcutsShortcut f9 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f9,
    name: 'f9',
  );

  /// Represents the location of the "F10" key on a generalized keyboard.
  static const GameShortcutsShortcut f10 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f10,
    name: 'f10',
  );

  /// Represents the location of the "F11" key on a generalized keyboard.
  static const GameShortcutsShortcut f11 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f11,
    name: 'f11',
  );

  /// Represents the location of the "F12" key on a generalized keyboard.
  static const GameShortcutsShortcut f12 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f12,
    name: 'f12',
  );

  /// Represents the location of the "F13" key on a generalized keyboard.
  static const GameShortcutsShortcut f13 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f13,
    name: 'f13',
  );

  /// Represents the location of the "F14" key on a generalized keyboard.
  static const GameShortcutsShortcut f14 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f14,
    name: 'f14',
  );

  /// Represents the location of the "F15" key on a generalized keyboard.
  static const GameShortcutsShortcut f15 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f15,
    name: 'f15',
  );

  /// Represents the location of the "F16" key on a generalized keyboard.
  static const GameShortcutsShortcut f16 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f16,
    name: 'f16',
  );

  /// Represents the location of the "F17" key on a generalized keyboard.
  static const GameShortcutsShortcut f17 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f17,
    name: 'f17',
  );

  /// Represents the location of the "F18" key on a generalized keyboard.
  static const GameShortcutsShortcut f18 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f18,
    name: 'f18',
  );

  /// Represents the location of the "F19" key on a generalized keyboard.
  static const GameShortcutsShortcut f19 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f19,
    name: 'f19',
  );

  /// Represents the location of the "F20" key on a generalized keyboard.
  static const GameShortcutsShortcut f20 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f20,
    name: 'f20',
  );

  /// Represents the location of the "F21" key on a generalized keyboard.
  static const GameShortcutsShortcut f21 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f21,
    name: 'f21',
  );

  /// Represents the location of the "F22" key on a generalized keyboard.
  static const GameShortcutsShortcut f22 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f22,
    name: 'f22',
  );

  /// Represents the location of the "F23" key on a generalized keyboard.
  static const GameShortcutsShortcut f23 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f23,
    name: 'f23',
  );

  /// Represents the location of the "F24" key on a generalized keyboard.
  static const GameShortcutsShortcut f24 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.f24,
    name: 'f24',
  );

  /// Represents the location of the "Find" key on a generalized keyboard.
  static const GameShortcutsShortcut find = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.find,
    name: 'find',
  );

  /// Represents the location of the "Fn" key on a generalized keyboard.
  static const GameShortcutsShortcut fn = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.fn,
    name: 'fn',
  );

  /// Represents the location of the "Fn Lock" key on a generalized keyboard.
  static const GameShortcutsShortcut fnLock = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.fnLock,
    name: 'fnLock',
  );

  /// Represents the location of the "Game Button 1" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton1 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton1,
    name: 'gameButton1',
  );

  /// Represents the location of the "Game Button 2" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton2 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton2,
    name: 'gameButton2',
  );

  /// Represents the location of the "Game Button 3" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton3 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton3,
    name: 'gameButton3',
  );

  /// Represents the location of the "Game Button 4" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton4 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton4,
    name: 'gameButton4',
  );

  /// Represents the location of the "Game Button 5" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton5 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton5,
    name: 'gameButton5',
  );

  /// Represents the location of the "Game Button 6" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton6 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton6,
    name: 'gameButton6',
  );

  /// Represents the location of the "Game Button 7" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton7 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton7,
    name: 'gameButton7',
  );

  /// Represents the location of the "Game Button 8" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton8 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton8,
    name: 'gameButton8',
  );

  /// Represents the location of the "Game Button 9" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton9 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton9,
    name: 'gameButton9',
  );

  /// Represents the location of the "Game Button 10" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton10 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton10,
    name: 'gameButton10',
  );

  /// Represents the location of the "Game Button 11" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton11 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton11,
    name: 'gameButton11',
  );

  /// Represents the location of the "Game Button 12" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton12 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton12,
    name: 'gameButton12',
  );

  /// Represents the location of the "Game Button 13" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton13 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton13,
    name: 'gameButton13',
  );

  /// Represents the location of the "Game Button 14" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton14 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton14,
    name: 'gameButton14',
  );

  /// Represents the location of the "Game Button 15" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton15 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton15,
    name: 'gameButton15',
  );

  /// Represents the location of the "Game Button 16" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButton16 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButton16,
    name: 'gameButton16',
  );

  /// Represents the location of the "Game Button A" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonA = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonA,
    name: 'gameButtonA',
  );

  /// Represents the location of the "Game Button B" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonB = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonB,
    name: 'gameButtonB',
  );

  /// Represents the location of the "Game Button C" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonC = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonC,
    name: 'gameButtonC',
  );

  /// Represents the location of the "Game Button Left 1" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonLeft1 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonLeft1,
    name: 'gameButtonLeft1',
  );

  /// Represents the location of the "Game Button Left 2" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonLeft2 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonLeft2,
    name: 'gameButtonLeft2',
  );

  /// Represents the location of the "Game Button Mode" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonMode = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonMode,
    name: 'gameButtonMode',
  );

  /// Represents the location of the "Game Button Right 1" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonRight1 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonRight1,
    name: 'gameButtonRight1',
  );

  /// Represents the location of the "Game Button Right 2" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonRight2 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonRight2,
    name: 'gameButtonRight2',
  );

  /// Represents the location of the "Game Button Select" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonSelect = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonSelect,
    name: 'gameButtonSelect',
  );

  /// Represents the location of the "Game Button Start" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonStart = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonStart,
    name: 'gameButtonStart',
  );

  /// Represents the location of the "Game Button Thumb Left" key on ageneralized keyboard.
  static const GameShortcutsShortcut gameButtonThumbLeft =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonThumbLeft,
    name: 'gameButtonThumbLeft',
  );

  /// Represents the location of the "Game Button Thumb Right" key on ageneralized keyboard.
  static const GameShortcutsShortcut gameButtonThumbRight =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonThumbRight,
    name: 'gameButtonThumbRight',
  );

  /// Represents the location of the "Game Button X" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonX = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonX,
    name: 'gameButtonX',
  );

  /// Represents the location of the "Game Button Y" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonY = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonY,
    name: 'gameButtonY',
  );

  /// Represents the location of the "Game Button Z" key on a generalizedkeyboard.
  static const GameShortcutsShortcut gameButtonZ = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.gameButtonZ,
    name: 'gameButtonZ',
  );

  /// Represents the location of the "Help" key on a generalized keyboard.
  static const GameShortcutsShortcut help = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.help,
    name: 'help',
  );

  /// Represents the location of the "Home" key on a generalized keyboard.
  static const GameShortcutsShortcut home = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.home,
    name: 'home',
  );

  /// Represents the location of the "Hyper" key on a generalized keyboard.
  static const GameShortcutsShortcut hyper = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.hyper,
    name: 'hyper',
  );

  /// Represents the location of the "Info" key on a generalized keyboard.
  static const GameShortcutsShortcut info = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.info,
    name: 'info',
  );

  /// Represents the location of the "Insert" key on a generalized keyboard.
  static const GameShortcutsShortcut insert = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.insert,
    name: 'insert',
  );

  /// Represents the location of the "Intl Backslash" key on a generalizedkeyboard.
  static const GameShortcutsShortcut intlBackslash = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.intlBackslash,
    name: 'intlBackslash',
  );

  /// Represents the location of the "Intl Ro" key on a generalized keyboard.
  static const GameShortcutsShortcut intlRo = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.intlRo,
    name: 'intlRo',
  );

  /// Represents the location of the "Intl Yen" key on a generalized keyboard.
  static const GameShortcutsShortcut intlYen = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.intlYen,
    name: 'intlYen',
  );

  /// Represents the location of the "Kana Mode" key on a generalized keyboard.
  static const GameShortcutsShortcut kanaMode = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.kanaMode,
    name: 'kanaMode',
  );

  /// Represents the location of the "Kbd Illum Down" key on a generalizedkeyboard.
  static const GameShortcutsShortcut kbdIllumDown = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.kbdIllumDown,
    name: 'kbdIllumDown',
  );

  /// Represents the location of the "Kbd Illum Up" key on a generalizedkeyboard.
  static const GameShortcutsShortcut kbdIllumUp = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.kbdIllumUp,
    name: 'kbdIllumUp',
  );

  /// Represents the location of the "Key A" key on a generalized keyboard.
  static const GameShortcutsShortcut keyA = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyA,
    name: 'keyA',
  );

  /// Represents the location of the "Key B" key on a generalized keyboard.
  static const GameShortcutsShortcut keyB = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyB,
    name: 'keyB',
  );

  /// Represents the location of the "Keyboard Layout Select" key on ageneralized keyboard.
  static const GameShortcutsShortcut keyboardLayoutSelect =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyboardLayoutSelect,
    name: 'keyboardLayoutSelect',
  );

  /// Represents the location of the "Key C" key on a generalized keyboard.
  static const GameShortcutsShortcut keyC = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyC,
    name: 'keyC',
  );

  /// Represents the location of the "Key D" key on a generalized keyboard.
  static const GameShortcutsShortcut keyD = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyD,
    name: 'keyD',
  );

  /// Represents the location of the "Key E" key on a generalized keyboard.
  static const GameShortcutsShortcut keyE = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyE,
    name: 'keyE',
  );

  /// Represents the location of the "Key F" key on a generalized keyboard.
  static const GameShortcutsShortcut keyF = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyF,
    name: 'keyF',
  );

  /// Represents the location of the "Key G" key on a generalized keyboard.
  static const GameShortcutsShortcut keyG = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyG,
    name: 'keyG',
  );

  /// Represents the location of the "Key H" key on a generalized keyboard.
  static const GameShortcutsShortcut keyH = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyH,
    name: 'keyH',
  );

  /// Represents the location of the "Key I" key on a generalized keyboard.
  static const GameShortcutsShortcut keyI = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyI,
    name: 'keyI',
  );

  /// Represents the location of the "Key J" key on a generalized keyboard.
  static const GameShortcutsShortcut keyJ = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyJ,
    name: 'keyJ',
  );

  /// Represents the location of the "Key K" key on a generalized keyboard.
  static const GameShortcutsShortcut keyK = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyK,
    name: 'keyK',
  );

  /// Represents the location of the "Key L" key on a generalized keyboard.
  static const GameShortcutsShortcut keyL = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyL,
    name: 'keyL',
  );

  /// Represents the location of the "Key M" key on a generalized keyboard.
  static const GameShortcutsShortcut keyM = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyM,
    name: 'keyM',
  );

  /// Represents the location of the "Key N" key on a generalized keyboard.
  static const GameShortcutsShortcut keyN = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyN,
    name: 'keyN',
  );

  /// Represents the location of the "Key O" key on a generalized keyboard.
  static const GameShortcutsShortcut keyO = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyO,
    name: 'keyO',
  );

  /// Represents the location of the "Key P" key on a generalized keyboard.
  static const GameShortcutsShortcut keyP = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyP,
    name: 'keyP',
  );

  /// Represents the location of the "Key Q" key on a generalized keyboard.
  static const GameShortcutsShortcut keyQ = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyQ,
    name: 'keyQ',
  );

  /// Represents the location of the "Key R" key on a generalized keyboard.
  static const GameShortcutsShortcut keyR = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyR,
    name: 'keyR',
  );

  /// Represents the location of the "Key S" key on a generalized keyboard.
  static const GameShortcutsShortcut keyS = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyS,
    name: 'keyS',
  );

  /// Represents the location of the "Key T" key on a generalized keyboard.
  static const GameShortcutsShortcut keyT = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyT,
    name: 'keyT',
  );

  /// Represents the location of the "Key U" key on a generalized keyboard.
  static const GameShortcutsShortcut keyU = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyU,
    name: 'keyU',
  );

  /// Represents the location of the "Key V" key on a generalized keyboard.
  static const GameShortcutsShortcut keyV = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyV,
    name: 'keyV',
  );

  /// Represents the location of the "Key W" key on a generalized keyboard.
  static const GameShortcutsShortcut keyW = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyW,
    name: 'keyW',
  );

  /// Represents the location of the "Key X" key on a generalized keyboard.
  static const GameShortcutsShortcut keyX = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyX,
    name: 'keyX',
  );

  /// Represents the location of the "Key Y" key on a generalized keyboard.
  static const GameShortcutsShortcut keyY = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyY,
    name: 'keyY',
  );

  /// Represents the location of the "Key Z" key on a generalized keyboard.
  static const GameShortcutsShortcut keyZ = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.keyZ,
    name: 'keyZ',
  );

  /// Represents the location of the "Lang 1" key on a generalized keyboard.
  static const GameShortcutsShortcut lang1 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.lang1,
    name: 'lang1',
  );

  /// Represents the location of the "Lang 2" key on a generalized keyboard.
  static const GameShortcutsShortcut lang2 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.lang2,
    name: 'lang2',
  );

  /// Represents the location of the "Lang 3" key on a generalized keyboard.
  static const GameShortcutsShortcut lang3 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.lang3,
    name: 'lang3',
  );

  /// Represents the location of the "Lang 4" key on a generalized keyboard.
  static const GameShortcutsShortcut lang4 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.lang4,
    name: 'lang4',
  );

  /// Represents the location of the "Lang 5" key on a generalized keyboard.
  static const GameShortcutsShortcut lang5 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.lang5,
    name: 'lang5',
  );

  /// Represents the location of the "Launch App1" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchApp1 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchApp1,
    name: 'launchApp1',
  );

  /// Represents the location of the "Launch App2" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchApp2 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchApp2,
    name: 'launchApp2',
  );

  /// Represents the location of the "Launch Assistant" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchAssistant = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchAssistant,
    name: 'launchAssistant',
  );

  /// Represents the location of the "Launch Audio Browser" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchAudioBrowser = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchAudioBrowser,
    name: 'launchAudioBrowser',
  );

  /// Represents the location of the "Launch Calendar" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchCalendar = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchCalendar,
    name: 'launchCalendar',
  );

  /// Represents the location of the "Launch Contacts" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchContacts = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchContacts,
    name: 'launchContacts',
  );

  /// Represents the location of the "Launch Control Panel" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchControlPanel = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchControlPanel,
    name: 'launchControlPanel',
  );

  /// Represents the location of the "Launch Documents" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchDocuments = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchDocuments,
    name: 'launchDocuments',
  );

  /// Represents the location of the "Launch Internet Browser" key on ageneralized keyboard.
  static const GameShortcutsShortcut launchInternetBrowser =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchInternetBrowser,
    name: 'launchInternetBrowser',
  );

  /// Represents the location of the "Launch Keyboard Layout" key on ageneralized keyboard.
  static const GameShortcutsShortcut launchKeyboardLayout =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchKeyboardLayout,
    name: 'launchKeyboardLayout',
  );

  /// Represents the location of the "Launch Mail" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchMail = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchMail,
    name: 'launchMail',
  );

  /// Represents the location of the "Launch Phone" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchPhone = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchPhone,
    name: 'launchPhone',
  );

  /// Represents the location of the "Launch Screen Saver" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchScreenSaver = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchScreenSaver,
    name: 'launchScreenSaver',
  );

  /// Represents the location of the "Launch Spreadsheet" key on a generalizedkeyboard.
  static const GameShortcutsShortcut launchSpreadsheet = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchSpreadsheet,
    name: 'launchSpreadsheet',
  );

  /// Represents the location of the "Launch Word Processor" key on ageneralized keyboard.
  static const GameShortcutsShortcut launchWordProcessor =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.launchWordProcessor,
    name: 'launchWordProcessor',
  );

  /// Represents the location of the "Lock Screen" key on a generalizedkeyboard.
  static const GameShortcutsShortcut lockScreen = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.lockScreen,
    name: 'lockScreen',
  );

  /// Represents the location of the "Log Off" key on a generalized keyboard.
  static const GameShortcutsShortcut logOff = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.logOff,
    name: 'logOff',
  );

  /// Represents the location of the "Mail Forward" key on a generalizedkeyboard.
  static const GameShortcutsShortcut mailForward = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mailForward,
    name: 'mailForward',
  );

  /// Represents the location of the "Mail Reply" key on a generalized keyboard.
  static const GameShortcutsShortcut mailReply = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mailReply,
    name: 'mailReply',
  );

  /// Represents the location of the "Mail Send" key on a generalized keyboard.
  static const GameShortcutsShortcut mailSend = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mailSend,
    name: 'mailSend',
  );

  /// Represents the location of the "Media Fast Forward" key on a generalizedkeyboard.
  static const GameShortcutsShortcut mediaFastForward = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaFastForward,
    name: 'mediaFastForward',
  );

  /// Represents the location of the "Media Last" key on a generalized keyboard.
  static const GameShortcutsShortcut mediaLast = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaLast,
    name: 'mediaLast',
  );

  /// Represents the location of the "Media Pause" key on a generalizedkeyboard.
  static const GameShortcutsShortcut mediaPause = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaPause,
    name: 'mediaPause',
  );

  /// Represents the location of the "Media Play" key on a generalized keyboard.
  static const GameShortcutsShortcut mediaPlay = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaPlay,
    name: 'mediaPlay',
  );

  /// Represents the location of the "Media Play Pause" key on a generalizedkeyboard.
  static const GameShortcutsShortcut mediaPlayPause = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaPlayPause,
    name: 'mediaPlayPause',
  );

  /// Represents the location of the "Media Record" key on a generalizedkeyboard.
  static const GameShortcutsShortcut mediaRecord = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaRecord,
    name: 'mediaRecord',
  );

  /// Represents the location of the "Media Rewind" key on a generalizedkeyboard.
  static const GameShortcutsShortcut mediaRewind = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaRewind,
    name: 'mediaRewind',
  );

  /// Represents the location of the "Media Select" key on a generalizedkeyboard.
  static const GameShortcutsShortcut mediaSelect = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaSelect,
    name: 'mediaSelect',
  );

  /// Represents the location of the "Media Stop" key on a generalized keyboard.
  static const GameShortcutsShortcut mediaStop = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaStop,
    name: 'mediaStop',
  );

  /// Represents the location of the "Media Track Next" key on a generalizedkeyboard.
  static const GameShortcutsShortcut mediaTrackNext = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaTrackNext,
    name: 'mediaTrackNext',
  );

  /// Represents the location of the "Media Track Previous" key on a generalizedkeyboard.
  static const GameShortcutsShortcut mediaTrackPrevious = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.mediaTrackPrevious,
    name: 'mediaTrackPrevious',
  );

  /// Represents the location of the "Meta Left" key on a generalized keyboard.
  static const GameShortcutsShortcut metaLeft = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.metaLeft,
    name: 'metaLeft',
  );

  /// Represents the location of the "Meta Right" key on a generalized keyboard.
  static const GameShortcutsShortcut metaRight = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.metaRight,
    name: 'metaRight',
  );

  /// Represents the location of the "Microphone Mute Toggle" key on ageneralized keyboard.
  static const GameShortcutsShortcut microphoneMuteToggle =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.microphoneMuteToggle,
    name: 'microphoneMuteToggle',
  );

  /// Represents the location of the "Minus" key on a generalized keyboard.
  static const GameShortcutsShortcut minus = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.minus,
    name: 'minus',
  );

  /// Represents the location of the "New Key" key on a generalized keyboard.
  static const GameShortcutsShortcut newKey = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.newKey,
    name: 'newKey',
  );

  /// Represents the location of the "Non Convert" key on a generalizedkeyboard.
  static const GameShortcutsShortcut nonConvert = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.nonConvert,
    name: 'nonConvert',
  );

  /// Represents the location of the "Num Lock" key on a generalized keyboard.
  static const GameShortcutsShortcut numLock = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numLock,
    name: 'numLock',
  );

  /// Represents the location of the "Numpad 0" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad0 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad0,
    name: 'numpad0',
  );

  /// Represents the location of the "Numpad 1" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad1 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad1,
    name: 'numpad1',
  );

  /// Represents the location of the "Numpad 2" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad2 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad2,
    name: 'numpad2',
  );

  /// Represents the location of the "Numpad 3" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad3 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad3,
    name: 'numpad3',
  );

  /// Represents the location of the "Numpad 4" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad4 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad4,
    name: 'numpad4',
  );

  /// Represents the location of the "Numpad 5" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad5 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad5,
    name: 'numpad5',
  );

  /// Represents the location of the "Numpad 6" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad6 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad6,
    name: 'numpad6',
  );

  /// Represents the location of the "Numpad 7" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad7 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad7,
    name: 'numpad7',
  );

  /// Represents the location of the "Numpad 8" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad8 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad8,
    name: 'numpad8',
  );

  /// Represents the location of the "Numpad 9" key on a generalized keyboard.
  static const GameShortcutsShortcut numpad9 = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpad9,
    name: 'numpad9',
  );

  /// Represents the location of the "Numpad Add" key on a generalized keyboard.
  static const GameShortcutsShortcut numpadAdd = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadAdd,
    name: 'numpadAdd',
  );

  /// Represents the location of the "Numpad Backspace" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadBackspace = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadBackspace,
    name: 'numpadBackspace',
  );

  /// Represents the location of the "Numpad Clear" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadClear = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadClear,
    name: 'numpadClear',
  );

  /// Represents the location of the "Numpad Clear Entry" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadClearEntry = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadClearEntry,
    name: 'numpadClearEntry',
  );

  /// Represents the location of the "Numpad Comma" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadComma = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadComma,
    name: 'numpadComma',
  );

  /// Represents the location of the "Numpad Decimal" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadDecimal = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadDecimal,
    name: 'numpadDecimal',
  );

  /// Represents the location of the "Numpad Divide" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadDivide = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadDivide,
    name: 'numpadDivide',
  );

  /// Represents the location of the "Numpad Enter" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadEnter = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadEnter,
    name: 'numpadEnter',
  );

  /// Represents the location of the "Numpad Equal" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadEqual = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadEqual,
    name: 'numpadEqual',
  );

  /// Represents the location of the "Numpad Memory Add" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadMemoryAdd = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadMemoryAdd,
    name: 'numpadMemoryAdd',
  );

  /// Represents the location of the "Numpad Memory Clear" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadMemoryClear = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadMemoryClear,
    name: 'numpadMemoryClear',
  );

  /// Represents the location of the "Numpad Memory Recall" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadMemoryRecall = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadMemoryRecall,
    name: 'numpadMemoryRecall',
  );

  /// Represents the location of the "Numpad Memory Store" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadMemoryStore = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadMemoryStore,
    name: 'numpadMemoryStore',
  );

  /// Represents the location of the "Numpad Memory Subtract" key on ageneralized keyboard.
  static const GameShortcutsShortcut numpadMemorySubtract =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadMemorySubtract,
    name: 'numpadMemorySubtract',
  );

  /// Represents the location of the "Numpad Multiply" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadMultiply = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadMultiply,
    name: 'numpadMultiply',
  );

  /// Represents the location of the "Numpad Paren Left" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadParenLeft = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadParenLeft,
    name: 'numpadParenLeft',
  );

  /// Represents the location of the "Numpad Paren Right" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadParenRight = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadParenRight,
    name: 'numpadParenRight',
  );

  /// Represents the location of the "Numpad Sign Change" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadSignChange = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadSignChange,
    name: 'numpadSignChange',
  );

  /// Represents the location of the "Numpad Subtract" key on a generalizedkeyboard.
  static const GameShortcutsShortcut numpadSubtract = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.numpadSubtract,
    name: 'numpadSubtract',
  );

  /// Represents the location of the "Open" key on a generalized keyboard.
  static const GameShortcutsShortcut open = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.open,
    name: 'open',
  );

  /// Represents the location of the "Page Down" key on a generalized keyboard.
  static const GameShortcutsShortcut pageDown = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.pageDown,
    name: 'pageDown',
  );

  /// Represents the location of the "Page Up" key on a generalized keyboard.
  static const GameShortcutsShortcut pageUp = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.pageUp,
    name: 'pageUp',
  );

  /// Represents the location of the "Paste" key on a generalized keyboard.
  static const GameShortcutsShortcut paste = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.paste,
    name: 'paste',
  );

  /// Represents the location of the "Pause" key on a generalized keyboard.
  static const GameShortcutsShortcut pause = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.pause,
    name: 'pause',
  );

  /// Represents the location of the "Period" key on a generalized keyboard.
  static const GameShortcutsShortcut period = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.period,
    name: 'period',
  );

  /// Represents the location of the "Power" key on a generalized keyboard.
  static const GameShortcutsShortcut power = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.power,
    name: 'power',
  );

  /// Represents the location of the "Print" key on a generalized keyboard.
  static const GameShortcutsShortcut print = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.print,
    name: 'print',
  );

  /// Represents the location of the "Print Screen" key on a generalizedkeyboard.
  static const GameShortcutsShortcut printScreen = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.printScreen,
    name: 'printScreen',
  );

  /// Represents the location of the "Privacy Screen Toggle" key on ageneralized keyboard.
  static const GameShortcutsShortcut privacyScreenToggle =
      GameShortcutsShortcut(
    key: PhysicalKeyboardKey.privacyScreenToggle,
    name: 'privacyScreenToggle',
  );

  /// Represents the location of the "Program Guide" key on a generalizedkeyboard.
  static const GameShortcutsShortcut programGuide = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.programGuide,
    name: 'programGuide',
  );

  /// Represents the location of the "Props" key on a generalized keyboard.
  static const GameShortcutsShortcut props = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.props,
    name: 'props',
  );

  /// Represents the location of the "Quote" key on a generalized keyboard.
  static const GameShortcutsShortcut quote = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.quote,
    name: 'quote',
  );

  /// Represents the location of the "Redo" key on a generalized keyboard.
  static const GameShortcutsShortcut redo = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.redo,
    name: 'redo',
  );

  /// Represents the location of the "Resume" key on a generalized keyboard.
  static const GameShortcutsShortcut resume = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.resume,
    name: 'resume',
  );

  /// Represents the location of the "Save" key on a generalized keyboard.
  static const GameShortcutsShortcut save = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.save,
    name: 'save',
  );

  /// Represents the location of the "Scroll Lock" key on a generalizedkeyboard.
  static const GameShortcutsShortcut scrollLock = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.scrollLock,
    name: 'scrollLock',
  );

  /// Represents the location of the "Select" key on a generalized keyboard.
  static const GameShortcutsShortcut select = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.select,
    name: 'select',
  );

  /// Represents the location of the "Select Task" key on a generalizedkeyboard.
  static const GameShortcutsShortcut selectTask = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.selectTask,
    name: 'selectTask',
  );

  /// Represents the location of the "Semicolon" key on a generalized keyboard.
  static const GameShortcutsShortcut semicolon = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.semicolon,
    name: 'semicolon',
  );

  /// Represents the location of the "Shift Left" key on a generalized keyboard.
  static const GameShortcutsShortcut shiftLeft = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.shiftLeft,
    name: 'shiftLeft',
  );

  /// Represents the location of the "Shift Right" key on a generalizedkeyboard.
  static const GameShortcutsShortcut shiftRight = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.shiftRight,
    name: 'shiftRight',
  );

  /// Represents the location of the "Show All Windows" key on a generalizedkeyboard.
  static const GameShortcutsShortcut showAllWindows = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.showAllWindows,
    name: 'showAllWindows',
  );

  /// Represents the location of the "Slash" key on a generalized keyboard.
  static const GameShortcutsShortcut slash = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.slash,
    name: 'slash',
  );

  /// Represents the location of the "Sleep" key on a generalized keyboard.
  static const GameShortcutsShortcut sleep = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.sleep,
    name: 'sleep',
  );

  /// Represents the location of the "Space" key on a generalized keyboard.
  static const GameShortcutsShortcut space = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.space,
    name: 'space',
  );

  /// Represents the location of the "Speech Input Toggle" key on a generalizedkeyboard.
  static const GameShortcutsShortcut speechInputToggle = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.speechInputToggle,
    name: 'speechInputToggle',
  );

  /// Represents the location of the "Spell Check" key on a generalizedkeyboard.
  static const GameShortcutsShortcut spellCheck = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.spellCheck,
    name: 'spellCheck',
  );

  /// Represents the location of the "Super Key" key on a generalized keyboard.
  static const GameShortcutsShortcut superKey = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.superKey,
    name: 'superKey',
  );

  /// Represents the location of the "Suspend" key on a generalized keyboard.
  static const GameShortcutsShortcut suspend = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.suspend,
    name: 'suspend',
  );

  /// Represents the location of the "Tab" key on a generalized keyboard.
  static const GameShortcutsShortcut tab = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.tab,
    name: 'tab',
  );

  /// Represents the location of the "Turbo" key on a generalized keyboard.
  static const GameShortcutsShortcut turbo = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.turbo,
    name: 'turbo',
  );

  /// Represents the location of the "Undo" key on a generalized keyboard.
  static const GameShortcutsShortcut undo = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.undo,
    name: 'undo',
  );

  /// Represents the location of the "Usb Error Roll Over" key on a generalizedkeyboard.
  static const GameShortcutsShortcut usbErrorRollOver = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.usbErrorRollOver,
    name: 'usbErrorRollOver',
  );

  /// Represents the location of the "Usb Error Undefined" key on a generalizedkeyboard.
  static const GameShortcutsShortcut usbErrorUndefined = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.usbErrorUndefined,
    name: 'usbErrorUndefined',
  );

  /// Represents the location of the "Usb Post Fail" key on a generalizedkeyboard.
  static const GameShortcutsShortcut usbPostFail = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.usbPostFail,
    name: 'usbPostFail',
  );

  /// Represents the location of the "Usb Reserved" key on a generalizedkeyboard.
  static const GameShortcutsShortcut usbReserved = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.usbReserved,
    name: 'usbReserved',
  );

  /// Represents the location of the "Wake Up" key on a generalized keyboard.
  static const GameShortcutsShortcut wakeUp = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.wakeUp,
    name: 'wakeUp',
  );

  /// Represents the location of the "Zoom In" key on a generalized keyboard.
  static const GameShortcutsShortcut zoomIn = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.zoomIn,
    name: 'zoomIn',
  );

  /// Represents the location of the "Zoom Out" key on a generalized keyboard.
  static const GameShortcutsShortcut zoomOut = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.zoomOut,
    name: 'zoomOut',
  );

  /// Represents the location of the "Zoom Toggle" key on a generalizedkeyboard.
  static const GameShortcutsShortcut zoomToggle = GameShortcutsShortcut(
    key: PhysicalKeyboardKey.zoomToggle,
    name: 'zoomToggle',
  );
}

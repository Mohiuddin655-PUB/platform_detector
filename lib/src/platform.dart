import 'package:flutter/foundation.dart' show kIsWeb;

import 'platform_stub.dart' if (dart.library.io) 'platform_io.dart';

/// Returns `true` if the app is running on the web.
bool get isWeb => kIsWeb;

/// Returns `true` if the app is running on Android (native, not web).
bool get isAndroid => !kIsWeb && platformIsAndroid;

/// Returns `true` if the app is running on iOS (native, not web).
bool get isIOS => !kIsWeb && platformIsIos;

/// Returns `true` if the app is running on macOS (native, not web).
bool get isMacOS => !kIsWeb && platformIsMacOS;

/// Returns `true` if the app is running on Fuchsia (native, not web).
bool get isFuchsia => !kIsWeb && platformIsFuchsia;

/// Returns `true` if the app is running on Linux (native, not web).
bool get isLinux => !kIsWeb && platformIsLinux;

/// Returns `true` if the app is running on Windows (native, not web).
bool get isWindows => !kIsWeb && platformIsWindows;

/// Returns `true` if the app is running on an Apple device (iOS or macOS).
bool get isIosDevice => isIOS || isMacOS;

/// Returns `true` if the app is running on a mobile device (Android or iOS).
bool get isMobile => isAndroid || isIOS;

/// Returns `true` if the app is running on a desktop OS (macOS, Linux, or Windows).
bool get isDesktop => isMacOS || isLinux || isWindows;

/// Returns the current platform as a string.
///
/// Possible values: `'web'`, `'android'`, `'ios'`, `'macos'`,
/// `'fuchsia'`, `'linux'`, `'windows'`, `'unknown'`.
String get platform => kIsWeb ? 'web' : nativePlatform;

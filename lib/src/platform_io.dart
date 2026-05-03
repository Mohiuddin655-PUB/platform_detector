import 'dart:io';

/// Whether the current native platform is Android.
bool get platformIsAndroid => Platform.isAndroid;

/// Whether the current native platform is iOS.
bool get platformIsIos => Platform.isIOS;

/// Whether the current native platform is macOS.
bool get platformIsMacOS => Platform.isMacOS;

/// Whether the current native platform is Fuchsia.
bool get platformIsFuchsia => Platform.isFuchsia;

/// Whether the current native platform is Linux.
bool get platformIsLinux => Platform.isLinux;

/// Whether the current native platform is Windows.
bool get platformIsWindows => Platform.isWindows;

/// The current native platform name as a lowercase string.
String get nativePlatform => Platform.isAndroid
    ? 'android'
    : Platform.isIOS
        ? 'ios'
        : Platform.isMacOS
            ? 'macos'
            : Platform.isFuchsia
                ? 'fuchsia'
                : Platform.isLinux
                    ? 'linux'
                    : Platform.isWindows
                        ? 'windows'
                        : 'unknown';

import 'dart:io';

bool get platformIsAndroid => Platform.isAndroid;

bool get platformIsIos => Platform.isIOS;

bool get platformIsMacOS => Platform.isMacOS;

bool get platformIsFuchsia => Platform.isFuchsia;

bool get platformIsLinux => Platform.isLinux;

bool get platformIsWindows => Platform.isWindows;

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

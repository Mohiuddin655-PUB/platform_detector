import 'dart:io' show Platform;

import 'package:flutter_test/flutter_test.dart'
    hide isMacOS, isLinux, isWindows;
import 'package:platform_detector/platform_detector.dart';

void main() {
  group('platform_detector', () {
    test('isWeb is false on native platforms', () {
      expect(isWeb, isFalse);
    });

    test('platform returns a non-empty string', () {
      expect(platform, isNotEmpty);
    });

    test('platform returns a valid platform name', () {
      const validPlatforms = {
        'web',
        'android',
        'ios',
        'macos',
        'linux',
        'windows',
        'fuchsia',
        'unknown',
      };
      expect(validPlatforms.contains(platform), isTrue);
    });

    test('exactly one OS-level getter is true at a time', () {
      final activeChecks = [
        isWeb,
        isAndroid,
        isIOS,
        isMacOS,
        isLinux,
        isWindows,
        isFuchsia,
      ].where((check) => check).length;

      expect(activeChecks, lessThanOrEqualTo(1));
    });

    test('isMobile is true only on Android or iOS', () {
      if (isMobile) {
        expect(isAndroid || isIOS, isTrue);
      } else {
        expect(isAndroid, isFalse);
        expect(isIOS, isFalse);
      }
    });

    test('isDesktop is true only on macOS, Linux, or Windows', () {
      if (isDesktop) {
        expect(isMacOS || isLinux || isWindows, isTrue);
      } else {
        expect(isMacOS, isFalse);
        expect(isLinux, isFalse);
        expect(isWindows, isFalse);
      }
    });

    test('isIosDevice is true only on iOS or macOS', () {
      if (isIosDevice) {
        expect(isIOS || isMacOS, isTrue);
      } else {
        expect(isIOS, isFalse);
        expect(isMacOS, isFalse);
      }
    });

    test('isMobile and isDesktop are mutually exclusive', () {
      expect(isMobile && isDesktop, isFalse);
    });

    test('platform string matches the active boolean getter', () {
      switch (platform) {
        case 'android':
          expect(isAndroid, isTrue);
          break;
        case 'ios':
          expect(isIOS, isTrue);
          break;
        case 'macos':
          expect(isMacOS, isTrue);
          break;
        case 'linux':
          expect(isLinux, isTrue);
          break;
        case 'windows':
          expect(isWindows, isTrue);
          break;
        case 'fuchsia':
          expect(isFuchsia, isTrue);
          break;
        case 'web':
          expect(isWeb, isTrue);
          break;
      }
    });

    test('native platform matches dart:io Platform', () {
      if (Platform.isAndroid) expect(platform, 'android');
      if (Platform.isIOS) expect(platform, 'ios');
      if (Platform.isMacOS) expect(platform, 'macos');
      if (Platform.isLinux) expect(platform, 'linux');
      if (Platform.isWindows) expect(platform, 'windows');
      if (Platform.isFuchsia) expect(platform, 'fuchsia');
    });
  });
}

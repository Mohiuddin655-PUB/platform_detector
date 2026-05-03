# platform_detector

[![pub package](https://img.shields.io/pub/v/platform_detector.svg)](https://pub.dev/packages/platform_detector)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A lightweight, zero-dependency platform detection package for Flutter that works seamlessly across **web, mobile, and desktop** — without `dart:io` import errors on web.

## ✨ Features

- ✅ Detect **Android, iOS, macOS, Linux, Windows, Fuchsia, and Web**
- ✅ Convenience getters: `isMobile`, `isDesktop`, `isIosDevice`
- ✅ Get current platform as a string with `platform`
- ✅ **Web-safe** — uses conditional imports to avoid `dart:io` errors
- ✅ Tiny footprint, no extra dependencies
- ✅ Pure getters — no initialization, no boilerplate

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  platform_detector: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## 🚀 Usage

Import the package:

```dart
import 'package:platform_detector/platform_detector.dart';
```

### Basic platform checks

```dart
if (isAndroid) {
  print('Running on Android');
} else if (isIOS) {
  print('Running on iOS');
} else if (isWeb) {
  print('Running on Web');
}
```

### Group checks

```dart
if (isMobile) {
  // Android or iOS
  showMobileLayout();
}

if (isDesktop) {
  // macOS, Linux, or Windows
  showDesktopLayout();
}

if (isIosDevice) {
  // iOS or macOS (Apple ecosystem)
  configureAppleSpecificFeatures();
}
```

### Get platform as a string

```dart
print('Current platform: $platform');
// Possible values: 'web', 'android', 'ios', 'macos',
// 'linux', 'windows', 'fuchsia', 'unknown'
```

### Real-world example

```dart
import 'package:flutter/material.dart';
import 'package:platform_detector/platform_detector.dart';

class AdaptiveButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const AdaptiveButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    if (isIosDevice) {
      return CupertinoButton(
        onPressed: onPressed,
        child: Text(label),
      );
    }
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
```

## 📖 API Reference

### Boolean getters

| Getter         | Returns `true` when running on              |
| -------------- | ------------------------------------------- |
| `isWeb`        | Web (browser)                               |
| `isAndroid`    | Android                                     |
| `isIOS`        | iOS (iPhone/iPad)                           |
| `isMacOS`      | macOS                                       |
| `isLinux`      | Linux                                       |
| `isWindows`    | Windows                                     |
| `isFuchsia`    | Fuchsia                                     |
| `isMobile`     | Android **or** iOS                          |
| `isDesktop`    | macOS, Linux, **or** Windows                |
| `isIosDevice`  | iOS **or** macOS (Apple ecosystem)          |

### String getter

| Getter     | Returns                                                                                |
| ---------- | -------------------------------------------------------------------------------------- |
| `platform` | `'web'`, `'android'`, `'ios'`, `'macos'`, `'linux'`, `'windows'`, `'fuchsia'`, `'unknown'` |

## 🔧 How it works

This package uses Dart's [conditional imports](https://dart.dev/guides/libraries/create-packages#conditionally-importing-and-exporting-library-files) to avoid `dart:io` errors on the web platform. Internally:

- On native platforms (mobile/desktop), `dart:io`'s `Platform` is used.
- On web, a stub is used since `dart:io` isn't available.
- `kIsWeb` is checked first in every getter for safety.

This means **you can safely use this package in any Flutter project** — including web — without worrying about platform-specific import errors.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to open an [issue](https://github.com/YOUR_USERNAME/platform_detector/issues) or submit a pull request.

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

Made with ❤️ for the Flutter community.# platform_detector

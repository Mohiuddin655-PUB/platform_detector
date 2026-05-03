# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.1] - 2026-05-03

### Added

- Initial release of `platform_detector`.
- Boolean getters: `isWeb`, `isAndroid`, `isIOS`, `isMacOS`, `isLinux`, `isWindows`, `isFuchsia`.
- Group getters: `isMobile`, `isDesktop`, `isIosDevice`.
- String getter: `platform` returns the current platform name.
- Web-safe implementation using conditional imports to avoid `dart:io` errors on web.
- Full documentation with usage examples.
- Unit tests covering all platform getters.
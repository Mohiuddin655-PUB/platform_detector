import 'package:flutter/material.dart';
import 'package:platform_detector/platform_detector.dart';

void main() {
  runApp(const PlatformDetectorExample());
}

/// Root widget of the example app.
class PlatformDetectorExample extends StatelessWidget {
  /// Creates the root widget of the example app.
  const PlatformDetectorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform Detector Example',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

/// Home page that displays all platform detection results.
class HomePage extends StatelessWidget {
  /// Creates the home page.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final checks = <String, bool>{
      'isWeb': isWeb,
      'isAndroid': isAndroid,
      'isIOS': isIOS,
      'isMacOS': isMacOS,
      'isLinux': isLinux,
      'isWindows': isWindows,
      'isFuchsia': isFuchsia,
      'isMobile': isMobile,
      'isDesktop': isDesktop,
      'isIosDevice': isIosDevice,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Platform Detector'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Current Platform',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      platform.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Platform Checks',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: checks.entries.map((entry) {
                  return ListTile(
                    leading: Icon(
                      entry.value ? Icons.check_circle : Icons.cancel_outlined,
                      color: entry.value ? Colors.green : Colors.grey,
                    ),
                    title: Text(entry.key),
                    trailing: Text(
                      entry.value.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: entry.value ? Colors.green : Colors.grey,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

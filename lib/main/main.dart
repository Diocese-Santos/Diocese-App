import 'package:diocese_santos/main/routing/router.dart';
import 'package:diocese_santos/ui/core/themes/theme.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter/material.dart';

import 'package:segment_analytics/client.dart';
import 'package:segment_analytics/state.dart';

Future main() async {
  await dotenv.load(fileName: ".env");

  final writeKey = dotenv.env['SEGMENT_WRITE_KEY'] ?? '';
  createClient(
    Configuration(
      writeKey,
      debug: true,
      trackApplicationLifecycleEvents: true,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routerConfig: router(),
    );
  }
}

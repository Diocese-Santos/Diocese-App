import 'package:diocese_santos/main/factories/infra/tracking/adapters/segment_adapter_factory.dart';
import 'package:diocese_santos/main/routing/router.dart';

import 'package:diocese_santos/ui/core/themes/theme.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter/material.dart';

Future main() async {
  await dotenv.load(fileName: ".env");

  makeSegmentAdapter();

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

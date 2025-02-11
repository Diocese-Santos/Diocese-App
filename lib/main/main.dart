import 'package:diocese_santos/main/factories/ui/pages/login_page_factory.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorSchema = ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        dividerTheme: const DividerThemeData(space: 0),
        appBarTheme: AppBarTheme(color: colorSchema.primaryContainer),
        brightness: Brightness.light,
        colorScheme: colorSchema,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      home: makeLoginPage(),
    );
  }
}

import 'package:diocese_santos/firebase_options.dart';
import 'package:diocese_santos/main/factories/infra/storage/adapters/mmkv_adapter_factory.dart';
import 'package:diocese_santos/main/routing/router.dart';

import 'package:diocese_santos/ui/core/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter/material.dart';
import 'package:mmkv/mmkv.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  //makeSegmentAdapter();
  await MMKV.initialize();
  makeMMKVAdapter();

  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } else {
      Firebase.app();
    }
  } catch (e) {}

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

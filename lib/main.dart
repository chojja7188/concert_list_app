import 'package:concert_list_app/config/ui_config.dart';
import 'package:concert_list_app/presentation/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:concert_list_app/config/go_router_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '모콘 MoCon - 모든 콘서트',
      theme: ThemeData(
        primaryColor: UiConfig.primaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: UiConfig.primaryColor,
          primary: UiConfig.primaryColor
        ),
        useMaterial3: true,
      ),
      routerConfig: GoRouterConfig().routerConfig
    );
  }
}
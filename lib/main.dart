import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesist_ios_app/base_wrapper.dart';
import 'package:yesist_ios_app/providers/app_provider.dart';
import 'package:yesist_ios_app/screens/splash.dart';
import 'configs/core_theme.dart' as theme;

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: BaseWrapper(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "YESIST12",
          theme: theme.themeLight,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}

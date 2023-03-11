import 'package:flutter/material.dart';
import 'package:yesist_ios_app/base_wrapper.dart';
import 'configs/core_theme.dart' as theme;

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWrapper(
      child: MaterialApp(
        title: "YESIST12",
        theme: theme.themeLight,
        home: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_dimensions.dart';
import 'package:yesist_ios_app/mobile_layout.dart';
import 'package:yesist_ios_app/providers/app_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () async {
      final app = AppProvider.state(context);
      app.init(context);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MobileLayout()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SizedBox(
              height: AppDimensions.normalize(350),
              width: double.infinity,
              child: Image.asset(
                'assets/images/splash1.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Image.asset('assets/images/splash2.png'),
          ],
        ),
      ),
    );
  }
}

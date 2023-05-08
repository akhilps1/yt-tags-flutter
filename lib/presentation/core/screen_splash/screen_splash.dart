import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tags/application/core/colors.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

Future<void> configure(context) async {
  await Future.delayed(const Duration(seconds: 3));
  Navigator.popAndPushNamed(context, '/home');
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );
    configure(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBlue,
      body: Center(
        child: Text(
          '#Tag',
          style: TextStyle(
              fontSize: 20,
              color: kWhite,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2),
        ),
      ),
    );
  }
}

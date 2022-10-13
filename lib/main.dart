import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:srv/images/main_page.dart';
import 'package:srv/images/routes.dart';
import 'package:srv/otp.dart';
import 'package:srv/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   
      title: 'Nellikka APP',
      theme: ThemeData(
        fontFamily: GoogleFonts.mulish().fontFamily,
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.mainpage,
      routes: {Routes.splash: (context) => const SplashscreenWidget(),
        Routes.otp: (context) => const OTPWidget(),
        Routes.mainpage: (context) => const MainPage(),
        },

    );
  }
}

class SplashscreenWidget extends StatelessWidget {
  const SplashscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SplashScreen(size: size);
  }
}

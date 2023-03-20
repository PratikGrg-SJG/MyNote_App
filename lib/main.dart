import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:note_app/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:thinktank/pages/home_page.dart';
import 'package:thinktank/pages/splashPages/splash_page_1.dart';

import 'pages/signPages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Use SplashPageOne from renan branch
    );
  }
}

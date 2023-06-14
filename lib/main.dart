import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:thinktank/pages/splashPages/splash_page_1.dart';
import 'package:thinktank/providers/theme.dart';
import 'package:thinktank/theme/dark_theme.dart';
import 'package:thinktank/theme/light_theme.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeChange()),
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: context.watch<ThemeChange>().getTheme ?? lightTheme,
        darkTheme: context.watch<ThemeChange>().getTheme ?? darkTheme,
        home: const SplashPageOne());

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPageOne(), // Use SplashPageOne from renan branch
    );

  }
}

// TODO: Components klasörü oluşturulacak.
// TODO: Bütün kullanınal tasarımlar hazırlanacak.

// ! Splash Pageler için olan TODO!
//TODO: Geç butonuna basıldığında 3. sayfaya atıyor fakat geri geldiğince tekrar 1. sayfaya atıyor. 2. sayfaya atması lazım.
//TODO: bütün mWidth ve mHeight değerleri kontrol edilecek.
import 'package:flutter/material.dart';
import 'package:thinktank/pages/home_page.dart';
import 'package:thinktank/pages/splashPages/splash_page_1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashPageOne());
  }
}

// TODO: Components klasörü oluşturulacak.
// TODO: Bütün kullanınal tasarımlar hazırlanacak.

// ! Splash Pageler için olan TODO!
//TODO: Geç butonuna basıldığında 3. sayfaya atıyor fakat geri geldiğince tekrar 1. sayfaya atıyor. 2. sayfaya atması lazım.
//TODO: bütün mWidth ve mHeight değerleri kontrol edilecek.
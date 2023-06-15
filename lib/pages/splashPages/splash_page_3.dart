import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thinktank/pages/components/main_outlinedbutton.dart';
import 'package:thinktank/pages/home_page.dart';
import 'package:thinktank/pages/signPages/login_page.dart';

class SplashPageTree extends StatelessWidget {
  const SplashPageTree({super.key});

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ThinkTank',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            fontSize: mHeight * 0.044,
            color: const Color(0xFF37352f),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? Image.asset('assets/images/mangreen.jpg',
                    height: mHeight * 0.4, width: mWidth * 0.9)
                : Image.asset('assets/images/image_1.png',
                    height: mHeight * 0.4, width: mWidth * 0.9),
            Text(
              'Öğrenmeye birlikte adım atın! - 2',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: mHeight * 0.04,
                color: const Color(0xFF37352f),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: mWidth * 0.0884,
                vertical: mHeight * 0.0204,
              ),
              child: Text(
                'ThinkThank ile başarıya giden yolda yanınızdayız. Motive edici bir ortam ile öğrenmeyi ',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.normal,
                  fontSize: mHeight * 0.022,
                  color: const Color(0xFF37352f),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: mHeight * 0.0081,
                bottom: mHeight * 0.0032,
                left: mWidth * 0.0884,
                right: mWidth * 0.0884,
              ),
              child: MainOutlinedButton(
                text: 'Giriş yap',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                textSize: 0.023,
              ),
            ),
            Padding(
              //! responsive değer olarak yapılacak
              padding: const EdgeInsets.all(0.0186),
              child: MainOutlinedButton(
                text: 'Anonim olarak devam et',
                textSize: 0.023,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                    (route) => false,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

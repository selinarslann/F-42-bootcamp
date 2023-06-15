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
              // ! Hemen aşağıdaki 38 ve 10 değerleride mWidth ve mHeight tarzında yapılacak.
              padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 19),
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
              // ! Hemen aşağıdaki 38 ve 10 değerleride mWidth ve mHeight tarzında yapılacak.
              padding:
                  const EdgeInsets.only(top: 8, bottom: 3, left: 38, right: 38),
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
              padding: const EdgeInsets.all(8.0),
              child: MainOutlinedButton(
                text: 'Anonim olarak devam et',
                textSize: 0.023,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
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

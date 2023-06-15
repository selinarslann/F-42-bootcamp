import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thinktank/pages/components/main_outlinedbutton.dart';
import 'package:thinktank/pages/splashPages/splash_page_3.dart';

class SplashPageTwo extends StatelessWidget {
  const SplashPageTwo({super.key});

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
                'ThinkThank ile başarıya giden yolda yanınızdayız. Motive edici bir ortam ile öğrenmeyi keyifli hale getirin. Siz çalışırken biz sizin yanınızdayız. Hoş geldiniz!',
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
                text: 'Devam et',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashPageTree(),
                    ),
                  );
                },
                textSize: 0.023,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      // ! SplashPageTree OLACAK!
                      builder: (context) => const SplashPageTree()),
                );
              },
              child: Text(
                'geç',
                style: GoogleFonts.inter(
                  fontSize: mHeight * 0.018,
                  color: const Color(0xFF37352f),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

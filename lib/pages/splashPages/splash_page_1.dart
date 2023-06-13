import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thinktank/pages/splashPages/splash_page_2.dart';
import 'package:thinktank/pages/splashPages/splash_page_3.dart';

class SplashPageOne extends StatelessWidget {
  const SplashPageOne({super.key});

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
            Image.asset('assets/images/image_1.png',
                height: mHeight * 0.4, width: mWidth * 0.9),
            Text(
              'Öğrenmeye birlikte adım atın!',
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
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashPageTwo()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xffF7F7F5)),
                  overlayColor:
                      MaterialStateProperty.all<Color>(const Color(0xffC1D8C1)),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(mWidth * 0.81, mHeight * 0.075),
                  ),
                  elevation: MaterialStateProperty.all<double>(0.0),
                  shadowColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                        color: Color(0xFFE0E0DE),
                      ),
                    ),
                  ),
                ),
                child: Text(
                  'Devam et',
                  style: GoogleFonts.inter(
                    color: const Color(0xff37352F),
                    fontSize: mHeight * 0.023,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
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

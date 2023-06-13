import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ThinkTanks',
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Kullanıcı Adı veya E-Posta',
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Şifre',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: const Text(
                      'Sifreninizi mi unuttunuz?',
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Color(0xffEB5757))),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  minimumSize: Size(mWidth, mHeight * 0.06),
                  backgroundColor: const Color(0xffFEF5F2),
                  foregroundColor: const Color(0xffEB5757),
                ),
                onPressed: () {
                  // Giriş düğmesine basıldığında yapılacak işlemler
                },
                child: const Text('Giriş',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffEB5757),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Ya da ?',
                ),
              ),

              // Google ile giriş düğmesi
              GoogleAuthButton(onPressed: () {}),
              AppleAuthButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

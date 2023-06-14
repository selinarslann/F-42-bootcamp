import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                keyboardType: TextInputType.visiblePassword,
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
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                            color: Color(0xffEB5757), width: 0.4)),
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
                        color: Color(0xffEB5757),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Ya da ?',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Butona tıklandığında yapılacak işlemler
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.grey)),
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      minimumSize: Size(mWidth, mHeight * 0.06),
                      //backgroundColor: const Color(0xffE0E0DE),
                      backgroundColor: Colors.white),
                  icon: const Icon(
                    FontAwesomeIcons.google,
                    color: Colors.black,
                  ), // İkonu burada belirtin
                  label: const Text(
                    'Google ile Giriş Yap',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Butona tıklandığında yapılacak işlemler
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.grey)),
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      minimumSize: Size(mWidth, mHeight * 0.06),
                      //backgroundColor: const Color(0xffE0E0DE),
                      backgroundColor: Colors.white),
                  icon: const Icon(
                    FontAwesomeIcons.apple,
                    color: Colors.black,
                  ), // İkonu burada belirtin
                  label: const Text(
                    'Google ile Giriş Yap',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Bir hesabin yok mu ? ',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

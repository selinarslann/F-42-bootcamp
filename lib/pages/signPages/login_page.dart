import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() {
      setState(() {});
    });
  }

  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

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
          //! responsive yapılacak
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LoginUserTextFormField(emailController: emailController),
              //! responsive yapılacak
              const SizedBox(height: 20.0),

              //!
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _isSecure,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Şifre',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                        onPressed: _changeLoading,
                        icon: AnimatedCrossFade(
                            firstChild:
                                const Icon(Icons.visibility_off_outlined),
                            secondChild: const Icon(Icons.visibility_outlined),
                            crossFadeState: _isSecure
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: Duration(milliseconds: 300)))),
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

class LoginUserTextFormField extends StatelessWidget {
  const LoginUserTextFormField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: FormFieldValidator().isNotEmpty,
      controller: emailController,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: const Color.fromARGB(255, 238, 238, 238),
          labelText: 'Kullanıcı Adı veya E-Posta',
          prefixIcon: const Icon(Icons.mail_outline_rounded),
          suffixIcon: emailController.text.isEmpty
              ? Container(width: 0.0, height: 0.0)
              : IconButton(
                  onPressed: () {
                    emailController.clear();
                  },
                  icon: const Icon(Icons.clear))),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : 'Bu alan boş bırakılamaz';
  }
}

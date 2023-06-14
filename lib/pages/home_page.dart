import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:thinktank/pages/components/icon_outlinedbutton.dart';
import 'package:thinktank/pages/components/main_outlinedbutton.dart';
import 'package:thinktank/pages/signPages/login_page.dart';
import 'package:thinktank/theme/light_theme.dart';

import '../providers/theme.dart';
import '../theme/dark_theme.dart';
import '../theme/theme_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Theme.of(context).brightness == Brightness.dark
                  ? IconButton(
                      onPressed: () {
                        context.read<ThemeChange>().changeTheme = lightTheme;
                        ThemeService().saveTheme('lightTheme');
                        ThemeService().getThemeFromSave();
                      },
                      icon: const Icon(Icons.sunny),
                    )
                  : IconButton(
                      onPressed: () {
                        context.read<ThemeChange>().changeTheme = darkTheme;
                        ThemeService().saveTheme('darkTheme');
                        ThemeService().getThemeFromSave();
                      },
                      icon: const Icon(Icons.dark_mode),
                    ),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 238, 238, 238),
                  ),
                  surfaceTintColor: MaterialStateProperty.all<Color>(
                    const Color(0x00F7F7F5),
                  ),
                  side: MaterialStateProperty.all<BorderSide>(
                    const BorderSide(
                      color: Color(0xffE0E0DE), //Etraftaki çizgi rengi
                      width: 1.5,
                    ),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(mWidth * 0.81, mHeight * 0.075),
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                    const Color(
                        0xffC1D8C1), //Basılınca gerçekleşen animasyon rengi
                  ),
                ),
                child: Text(
                  'Allah için düzelsin',
                  style: GoogleFonts.inter(
                    color: const Color(0xff37352F), //Fontun rengi
                    fontSize: mHeight * 0.023,
                  ),
                ),
              ),
              IconOutlinedButton(
                text: 'text',
                onPressed: () {},
                icon: FontAwesomeIcons.google,
              ),
              MainOutlinedButton(
                text: 'allah için düzelsin',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                textSize: 0.023,
              )
            ],
          ),
        ),
      ),
    );
  }
}

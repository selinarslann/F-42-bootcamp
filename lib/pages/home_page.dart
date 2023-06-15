import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/theme.dart';
import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';
import '../theme/theme_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Hoş geldin UserName',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            fontSize: mHeight * 0.024,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Hoş geldin Ali',
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

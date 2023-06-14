import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thinktank/pages/components/main_elevatedbutton.dart';
import 'package:thinktank/theme/light_theme.dart';

import '../providers/theme.dart';
import '../theme/dark_theme.dart';
import '../theme/theme_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {

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
              MainElevatedButton(
                text: 'deneme2',
                onPressed: () {},
              )
            ],
          ),

    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Think Tank'), // Keep the changes from renan branch

        ),
      ),
    );
  }
}

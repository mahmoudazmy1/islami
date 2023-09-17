import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/hadeth/item_hadeth_details.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/quran/item_sura_details.dart';
import 'package:islami/home/sebha/sebha_tab.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Home_Screen.routeName,
        routes: {
          Home_Screen.routeName: (context) => Home_Screen(),
          ItemSuraDetails.routeName: (context) => ItemSuraDetails(),
          SebhaTab.routeName: (context) => SebhaTab(),
          ItemHadethDetails.routeName: (context) => ItemHadethDetails(),
        },
        locale: Locale(provider.appLanguage),
        themeMode: provider.appTheme,
        darkTheme: MyTheme.darkTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: MyTheme.lightTheme);
  }
}

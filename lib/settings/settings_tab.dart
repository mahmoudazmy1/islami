import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:islami/settings/Language_bottom_sheet.dart';
import 'package:islami/settings/Them_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              appearBottomSheet();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: provider.appTheme == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : Color(0xffFACC1D),
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      provider.appLanguage == 'en'
                          ? AppLocalizations.of(context)!.english
                          : AppLocalizations.of(context)!.arabic,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Icon(Icons.arrow_drop_down,
                        color: provider.appTheme == ThemeMode.light
                            ? Theme.of(context).primaryColor
                            : Colors.white),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              appearThemBottomSheet();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: provider.appTheme == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : Color(0xffFACC1D),
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      provider.appTheme == ThemeMode.light
                          ? AppLocalizations.of(context)!.light
                          : AppLocalizations.of(context)!.dark,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: provider.appTheme == ThemeMode.light
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void appearBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => Language_Bottom_Sheet());
  }

  void appearThemBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => Them_Bottom_Sheet());
  }
}

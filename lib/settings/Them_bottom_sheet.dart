import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class Them_Bottom_Sheet extends StatefulWidget {
  @override
  State<Them_Bottom_Sheet> createState() => _Them_Bottom_SheetState();
}

class _Them_Bottom_SheetState extends State<Them_Bottom_Sheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      color: Theme.of(context).cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              provider.changeThem(ThemeMode.light);
            },
            child: provider.appTheme == ThemeMode.light
                ? getSelectedItemWidget(AppLocalizations.of(context)!.light)
                : getUnselectedItemWidget(AppLocalizations.of(context)!.light),
          ),
          InkWell(
            onTap: () {
              provider.changeThem(ThemeMode.dark);
            },
            child: provider.appTheme == ThemeMode.dark
                ? getSelectedItemWidget(AppLocalizations.of(context)!.dark)
                : getUnselectedItemWidget(AppLocalizations.of(context)!.dark),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
          Icon(
            Icons.check,
            color: Theme.of(context).primaryColor,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget getUnselectedItemWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}

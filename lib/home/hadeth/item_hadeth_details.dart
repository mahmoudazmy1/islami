import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/hadeth/item_hadeth_appear.dart.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemHadethDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<ItemHadethDetails> createState() => _ItemHadethDetailsState();
}

class _ItemHadethDetailsState extends State<ItemHadethDetails> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Stack(children: [
      provider.appTheme == ThemeMode.light
          ? Image.asset(
              'assets/images/background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/background_dark.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: ListView.builder(
            itemCount: args.content.length,
            itemBuilder: (context, index) {
              return ItemHadethAppear(content: args.content[index]);
            }),
      )
    ]);
  }
}

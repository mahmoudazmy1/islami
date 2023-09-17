import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/item_sura_appear.dart.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemSuraDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<ItemSuraDetails> createState() => _ItemSuraDetailsState();
}

class _ItemSuraDetailsState extends State<ItemSuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFiles(args.index);
    }
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
            '${args.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verses.length == 0
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
          ),
        )
            : ListView.builder(
            itemCount: verses.length,
            itemBuilder: (context, index) {
              return ItemSUraAppear(
                content: verses[index],
                index: index,
              );
            }),
      )
    ]);
  }

  void loadFiles(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}

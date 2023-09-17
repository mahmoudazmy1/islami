import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/hadeth/item_hadeth_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethView = [];

  @override
  Widget build(BuildContext context) {
    if (hadethView.isEmpty) {
      loadHadeth();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        hadethView.isEmpty
            ? CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              )
            : Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemHadethName(
                      content: hadethView[index],
                    );
                  },
                  itemCount: hadethView.length,
                ),
              ),
      ],
    );
  }

  void loadHadeth() async {
    String ahadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = ahadeth.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLine = hadethList[i].split('\n');
      String title = hadethLine[0];
      hadethLine.removeAt(0);
      Hadeth content = Hadeth(title: title, content: hadethLine);
      hadethView.add(content);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}

import 'package:flutter/material.dart';
import 'package:islami/home/quran/item_sura_details.dart';

class ItemSUraName extends StatelessWidget {
  String name;
  int index;

  ItemSUraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ItemSuraDetails.routeName,
            arguments: SuraDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}

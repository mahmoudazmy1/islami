import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/hadeth/item_hadeth_details.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth content;

  ItemHadethName({required this.content});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ItemHadethDetails.routeName, arguments: content);
      },
      child: Text(
        content.title,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}

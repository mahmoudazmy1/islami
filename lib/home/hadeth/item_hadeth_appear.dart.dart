import 'package:flutter/material.dart';

class ItemHadethAppear extends StatelessWidget {
  String content;

  ItemHadethAppear({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content',
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}

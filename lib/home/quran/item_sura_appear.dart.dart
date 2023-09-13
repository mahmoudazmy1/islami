import 'package:flutter/material.dart';

class ItemSUraAppear extends StatelessWidget {
  String content;
  int index;

  ItemSUraAppear({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content ${{index + 1}}',
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}

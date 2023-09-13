import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = 'sebhaname';

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  int index = 0;
  List<String> names = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا اله الا الله'
  ];

  void tasbeh() {
    counter++;
    if (counter % 33 == 0) {
      index++;
      if (index >= names.length) {
        index = 0;
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/head_ of_ seb7a.png')),
        Center(
            child: InkWell(
                onTap: () {
                  tasbeh();
                  setState(() {
                    angle += 10;
                  });
                },
                child: Transform.rotate(
                    angle: angle,
                    child: Image.asset('assets/images/body_ of_ seb7a.png')))),
        SizedBox(
          height: 40,
        ),
        Text(
          'Number of hymns',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            padding: EdgeInsetsDirectional.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              counter.toString(),
              style: Theme.of(context).textTheme.titleSmall,
            )),
        SizedBox(
          height: 18,
        ),
        Container(
            padding: EdgeInsetsDirectional.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              names[index],
              style: Theme.of(context).textTheme.titleMedium,
            )),
      ],
    );
  }
}

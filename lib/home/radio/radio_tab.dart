import 'package:flutter/material.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(child: Image.asset('assets/images/radio_image.png')),
        Text(
          'اذاعة القران الكريم',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.skip_previous,
              color: Color(0xffFACC1D),
              size: 40,
            ),
            Icon(Icons.play_arrow, color: Color(0xffFACC1D), size: 40),
            Icon(Icons.skip_next, color: Color(0xffFACC1D), size: 40),
          ],
        )
      ],
    );
  }
}

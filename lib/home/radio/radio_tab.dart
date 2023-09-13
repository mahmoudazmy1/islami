import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              color: Theme.of(context).primaryColor,
              size: 40,
            ),
            Icon(Icons.play_arrow,
                color: Theme.of(context).primaryColor, size: 40),
            Icon(Icons.skip_next,
                color: Theme.of(context).primaryColor, size: 40),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/sebha/sebha_tab.dart';

class Home_Screen extends StatefulWidget {
  static const String routeName = 'homescreen';

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: 'radio'),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/hadeth_icon.png')),
                    label: 'hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                    label: 'sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran.png')),
                    label: 'quran'),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
  ];
}

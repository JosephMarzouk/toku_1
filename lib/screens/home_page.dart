import 'package:flutter/material.dart';
import 'package:toku_1/components/category_item.dart';
import 'package:toku_1/screens/colors_page.dart';
import 'package:toku_1/screens/family_page.dart';
import 'package:toku_1/screens/numbers_page.dart';
import 'package:toku_1/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color.fromARGB(255, 242, 240, 237),
      appBar: AppBar(
        backgroundColor:const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color:const Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyPage();
              }));
            },
            text: 'Family members',
            color:const  Color(0xff558B37),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(0xff79359F),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const phrasespage();
              }));
            },
            text: 'Phrases',
            color: const Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}

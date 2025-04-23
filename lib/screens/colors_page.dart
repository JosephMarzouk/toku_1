import 'package:flutter/material.dart';
import 'package:toku_1/components/item.dart';
import 'package:toku_1/models/ItemInfo.dart';


class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemInfo> numbers = const [
    ItemInfo(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    ItemInfo(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Kasshoku',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    ItemInfo(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Nīsan',
        enName: 'Dusty yellow',
        sound: 'sounds/colors/dusty_yellow.wav'),
    ItemInfo(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Ane',
        enName: 'Grey',
        sound: 'sounds/colors/gray.wav'),
    ItemInfo(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Otōto',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    ItemInfo(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Imōto',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
    ItemInfo(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Ojīsan',
        enName: 'White',
        sound: 'sounds/colors/white.wav'),
    ItemInfo(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Sobo',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return item(number: numbers[index], itemcolor: Color(0xff79359F));
        },
      ),
    );
  }
}

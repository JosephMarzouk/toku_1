import 'package:flutter/material.dart';
import 'package:toku_1/components/item.dart';
import 'package:toku_1/models/ItemInfo.dart';


class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemInfo> numbers = const [
    ItemInfo(
        image: 'assets/images/family/family_father.png',
        jpName: 'Chichi-Oya',
        enName: 'Father',
        sound: 'sounds/family/father.wav'),
    ItemInfo(
        image: 'assets/images/family/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'sounds/family/mother.wav'),
    ItemInfo(
        image: 'assets/images/family/family_older_brother.png',
        jpName: 'Nīsan',
        enName: 'Older brother',
        sound: 'sounds/family/older_bother.wav'),
    ItemInfo(
        image: 'assets/images/family/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older sister',
        sound: 'sounds/family/older_sister.wav'),
    ItemInfo(
        image: 'assets/images/family/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger brother',
        sound: 'sounds/family/younger_brohter.wav'),
    ItemInfo(
        image: 'assets/images/family/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger sister',
        sound: 'sounds/family/younger_sister.wav'),
    ItemInfo(
        image: 'assets/images/family/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'Grandfather',
        sound: 'sounds/family/grand_father.wav'),
    ItemInfo(
        image: 'assets/images/family/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grandmother',
        sound: 'sounds/family/grand_mother.wav'),
    ItemInfo(
        image: 'assets/images/family/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'sounds/family/son.wav'),
    ItemInfo(
        image: 'assets/images/family/family_daughter.png',
        jpName: 'Musume',
        enName: 'Dughter',
        sound: 'sounds/family/daughter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family members'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return item(
            number: numbers[index],
            itemcolor: Color(0xff558B37),
          );
        },
      ),
    );
  }
}

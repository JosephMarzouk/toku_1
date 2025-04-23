import 'package:flutter/material.dart';
import 'package:toku_1/components/item.dart';
import 'package:toku_1/models/ItemInfo.dart';

class phrasespage extends StatelessWidget {
  const phrasespage({super.key});
  final List<ItemInfo> phrasesList = const [
    ItemInfo(
        jpName: 'kimasu ka',
        enName: 'Are you coming?',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemInfo(
        jpName: 'koudoku suru koto wa wasure nai de kudasai',
        enName: 'Dont forget to subscribe.',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemInfo(
        jpName: 'choushi wa dou desu ka',
        enName: 'How are you feeling?',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemInfo(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love anime.',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemInfo(
        jpName: 'Watashi wa programming ga daisukidesu',
        enName: 'I love programming.',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemInfo(
        jpName: 'programming wa kantan desu',
        enName: 'Programming is easy.',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemInfo(
        jpName: 'Onamaehanandesuka?',
        enName: 'What is your name?',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemInfo(
        jpName: 'doko ni iki masu ka .',
        enName: 'Where are you going?',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemInfo(
        jpName: 'Hai, watashi wa kite imasu',
        enName: 'Yes Im coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesWedhit(
            number: phrasesList[index],
            color: Color(0xff50ADC7),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:toku_1/models/ItemInfo.dart';

class item extends StatelessWidget {
  const item({super.key, required this.number, required this.itemcolor});
  final ItemInfo number;
  final itemcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: itemcolor,
      child: Row(
        children: [
          Container(
              color:const Color(0xffFFF6DC), child: Image.asset(number.image!)),
          Expanded(child: PhrasesWedhit(number: number, color: itemcolor))
        ],
      ),
    );
  }
}

class PhrasesWedhit extends StatelessWidget {
  const PhrasesWedhit({super.key, required this.number, required this.color});
  final ItemInfo number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Container(
        height: 100,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  expanded(number: number),
                  Text(
                    number.enName,
                    style:const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
           const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () {
                  ItemInfo item = ItemInfo(
                      image: number.image,
                      jpName: number.jpName,
                      enName: number.jpName,
                      sound: number.sound);
                  item.playsound();
                },
                icon:const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 29,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class expanded extends StatelessWidget {
  const expanded({
    super.key,
    required this.number,
  });

  final ItemInfo number;

  @override
  Widget build(BuildContext context) {
    return Text(
      number.jpName,
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:toku_1/screens/home_page.dart';

void main() {
  runApp(toku());
}

class toku extends StatelessWidget {
  const toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

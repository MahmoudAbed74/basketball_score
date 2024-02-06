import 'package:flutter/material.dart';

import 'package:basketball_score/appBar.dart';
import 'package:basketball_score/colors.dart';

void main() {
  runApp(const BasketBall());
}

class BasketBall extends StatelessWidget {
  const BasketBall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ColorsApp.backgroundColorScreen,
        appBar: AppBar(
          backgroundColor: const Color(0xFF80BCBD),
          title: const Text("BasketBall"),
          centerTitle: true,
        ),
        body: const Body(),
      ),
    );
  }
}

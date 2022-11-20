import 'package:flutter/material.dart';

class Game {
  final Color hiddenCard = Colors.red;
  List<Color>? gameColors;
  List<String>? gameImg;
  List<Color> cards = [
    Colors.green,
    Colors.yellow,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.blue
  ];
  final String hiddenCardpath = "assets/images/ant.png";
  List<String> cards_list = [
    "assets/mages/squirtle.png",
    "assets/images/mudkip.png",
    "assets/images/piplup.png",
    "assets/images/oshawott.png",
    "assets/images/squirtle.png",
    "assets/images/mudkip.png",
    "assets/images/piplup.png",
    "assets/images/oshawott.png",
    "assets/images/oshawott.png",
  ];
  final int cardCount = 12;
  List<Map<int, String>> matchCheck = [];

  //methods
  void initGame() {
    gameColors = List.generate(cardCount, (index) => hiddenCard);
    gameImg = List.generate(cardCount, (index) => hiddenCardpath);
  }
}
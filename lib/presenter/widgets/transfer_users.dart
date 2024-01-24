import 'dart:math';

import 'package:flutter/material.dart';

Widget transferUser(String name, String secondName) {
  String firstInitial = name.isNotEmpty ? name[0].toUpperCase() : '';
  String secondInitial = secondName.isNotEmpty ? secondName[0].toUpperCase() : '';

  Color color = getRandomColor();

  return Column(
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40)
        ),
        child: Center(
          child: Text(
            "$firstInitial$secondInitial",
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      const SizedBox(height: 10),
      Text(name, style: const TextStyle(
          color: Colors.white54,
          fontSize: 15,
          height: 0
      )),
      Text(secondName, style: const TextStyle(
          color: Colors.white54,
          fontSize: 15,
          height: 0
      ))
    ],
  );
}

Color getRandomColor() {
  Random random = Random();

  int red = random.nextInt(151) + 50;
  int green = random.nextInt(151) + 50;
  int blue = random.nextInt(151) + 50;

  return Color.fromARGB(255, red, green, blue);
}
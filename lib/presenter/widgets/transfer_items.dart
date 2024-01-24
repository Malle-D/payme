import 'dart:math';

import 'package:flutter/material.dart';

Widget transferItems(String title, String image) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
        color: const Color(0xff323440),
        borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, width: 40, height: 40),
        const SizedBox(height: 10),
        SizedBox(
          width: 90,
          child: Text(title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                height: 0,
              )),
        )
      ],
    ),
  );
}
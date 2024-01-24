import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

Widget transferPostcard(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: const Color(tealColor),
        borderRadius: BorderRadius.circular(15)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Tabriknoma qo'shish",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        Image.asset("assets/images/postcard.png",
            width: 85, height: 70)
      ],
    ),
  );
}
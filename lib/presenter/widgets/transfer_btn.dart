import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

Widget transferBtn(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: const Color(tealColor),
        borderRadius: BorderRadius.circular(15)),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            "Oldinga",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ),
  );
}
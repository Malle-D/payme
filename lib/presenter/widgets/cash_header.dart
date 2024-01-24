import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cashFlowHeader(String date, String sum){
  return Container(
    color: const Color(0xff2e2f38),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(date,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
          Text("- $sum.00 so'm",style: const TextStyle(
              color: Color(0xff91919a),
              fontWeight: FontWeight.w400,
              fontSize: 13)),
        ],
      ),
    ),
  );
}
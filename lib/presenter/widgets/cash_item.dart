import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cashFlowItem(String image, String sum, String time){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image, width: 90, height: 60,fit: BoxFit.cover,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("- $sum сум",style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15)),
                const SizedBox(height: 5),
                Text(time,style: const TextStyle(
                    color: Color(0xff91919a),
                    fontWeight: FontWeight.w400,
                    fontSize: 11)),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff23c1b4)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text("перевод",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 10)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      const Divider(height: 1, color: Colors.white12,)
    ],
  );
}
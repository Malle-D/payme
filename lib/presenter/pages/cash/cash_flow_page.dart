import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../widgets/cash_header.dart';
import '../../widgets/cash_item.dart';

class CashFlowPage extends StatefulWidget {
  const CashFlowPage({super.key});

  @override
  State<CashFlowPage> createState() => _CashFlowPageState();
}

class _CashFlowPageState extends State<CashFlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(darkBackground),
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("To'lovlar monitoringi",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18)),
            Row(
              children: [
                Icon(Icons.graphic_eq_outlined,
                    color: Color(0xffa2a5ae), size: 30),
                SizedBox(width: 8),
                Icon(Icons.filter_alt_outlined,
                    color: Color(0xffa2a5ae), size: 30),
              ],
            )
          ],
        ),
      ),
      backgroundColor: const Color(darkBackground),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          bottom: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tushum",
                            style: TextStyle(
                                color: Color(0xff91919a),
                                fontWeight: FontWeight.w400,
                                fontSize: 12)),
                        Text("+ 0 so'm",
                            style: TextStyle(
                                color: Color(tealColor),
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chiqim",
                          style: TextStyle(
                              color: Color(0xff91919a),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        Text(
                          "- 100 000 so'm",
                          style: TextStyle(
                              color: Color(0xfff16768),
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            cashFlowHeader("2024.01.21", "100 000"),
            cashFlowItem("assets/images/postcard.png", "100 000", "23:00")
          ],
        ),
      ),
    );
  }
}

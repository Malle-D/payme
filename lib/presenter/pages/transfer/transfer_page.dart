import 'package:flutter/material.dart';
import '../../../utils/utils.dart';
import '../../widgets/transfer_field.dart';
import '../../widgets/transfer_items.dart';
import '../../widgets/transfer_users.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  TextEditingController textController = TextEditingController();

  final FocusNode _textFieldFocusNode = FocusNode();

  @override
  void dispose() {
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(darkBackground),
        automaticallyImplyLeading: false,
        title: const Text("Pul o'tkazmasi",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16)),
      ),
      backgroundColor: const Color(darkBackground),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 16.0,
          right: 16.0,
          bottom: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Kimga:",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15)),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text("Karta yoki telefon raqami",
                  style: TextStyle(
                      color: Color(0xff8f929b),
                      fontWeight: FontWeight.w500,
                      fontSize: 12)),
            ),
            const SizedBox(height: 5),
            transferTextField(textController, _textFieldFocusNode),
            const SizedBox(height: 30),
            Row(
              children: [
                transferUser("Isfan", "Malle"),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Barchasi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(tealColor),
                        fontWeight: FontWeight.w700,
                        fontSize: 16)),
              ],
            ),
            const Spacer(),
            if (!_textFieldFocusNode.hasFocus)
              Container(
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
              ),
            if (!_textFieldFocusNode.hasFocus) const SizedBox(height: 16),
            if (!_textFieldFocusNode.hasFocus)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  transferItems(
                      "Valyuta ayirboshlash", "assets/images/postcard.png"),
                  transferItems(
                      "O'z kartamga o'tkazish", "assets/images/postcard.png"),
                  transferItems(
                      "Mening kontaktlarim", "assets/images/postcard.png"),
                ],
              ),
            if (_textFieldFocusNode.hasFocus)
              Container(
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
              ),
          ],
        ),
      ),
    );
  }
}
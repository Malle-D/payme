import 'package:flutter/material.dart';
import 'package:payme_clone/presenter/widgets/transfer_postcard.dart';
import '../../../utils/utils.dart';
import '../../widgets/transfer_btn.dart';
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
              transferPostcard(context),
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
              transferBtn(context)
          ],
        ),
      ),
    );
  }
}
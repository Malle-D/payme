import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payme_clone/presenter/pages/transfer/transfer_field.dart';
import 'package:payme_clone/presenter/pages/transfer/transfer_items.dart';
import 'package:payme_clone/presenter/pages/transfer/transfer_users.dart';
import '../../../utils/utils.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  TextEditingController textController = TextEditingController();

  final FocusNode _textFieldFocusNode = FocusNode();

  bool textEditing = false;

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
            // transferTextField(textController, _textFieldFocusNode),
            TextField(
              onEditingComplete: (){
                setState(() {
                  textEditing = false;
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                });
              },
              onTap: (){
                setState(() {
                  textEditing = true;
                });
              },
              focusNode: _textFieldFocusNode,
              controller: textController,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(16),
                _CreditCardNumberFormatter(),
              ],
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xff141517),
                contentPadding: EdgeInsets.all(10),
                hintText: 'Karta yoki telefon raqami',
                hintStyle: const TextStyle(
                    color: Color(0xff3c3d42), fontWeight: FontWeight.w400),
                // border: border,
                // errorBorder: errorBorder,
                // disabledBorder: border,
                // focusedBorder: focusedBorder,
                // focusedErrorBorder: errorBorder,
                prefixIcon: IconButton(
                  icon: Icon(Icons.credit_card),
                  onPressed: () {
                    textController.clear();
                  },
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.document_scanner_outlined),
                  onPressed: () {
                    // textController.clear();
                    print(textEditing);
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                TransferUser("Isfan", "Malle"),
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
            Builder(builder: (BuildContext context) {
              if (textEditing && _textFieldFocusNode.hasFocus) {
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
              } else {
                return Column(
                  children: [
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Image.asset("assets/images/postcard.png",
                              width: 85, height: 70)
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        transferItems("Valyuta ayirboshlash",
                            "assets/images/postcard.png"),
                        transferItems("O'z kartamga o'tkazish",
                            "assets/images/postcard.png"),
                        transferItems("Mening kontaktlarim",
                            "assets/images/postcard.png"),
                      ],
                    ),
                  ],
                );
              }
            })
          ],
        ),
      ),
    );
  }
}

class _CreditCardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final StringBuffer newText = StringBuffer();

    for (int i = 0; i < newValue.text.length; i++) {
      if (i > 0 && i % 4 == 0) {
        newText.write(' '); // Вставляем пробел каждые 4 символа
      }
      newText.write(newValue.text[i]);
    }

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(
        offset: newText.length,
      ),
    );
  }
}

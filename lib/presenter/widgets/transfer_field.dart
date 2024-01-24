import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/utils.dart';

Widget transferTextField(TextEditingController textController, FocusNode textFieldFocusNode) {

  const border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  const focusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Color(tealColor), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  const errorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Color(lightRedColor), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );


  return Column(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Text("Karta yoki telefon raqami",
            style: TextStyle(
                color: Color(0xff8f929b),
                fontWeight: FontWeight.w500,
                fontSize: 12)),
      ),
      const SizedBox(height: 5),
      TextField(
        focusNode: textFieldFocusNode,
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
          border: border,
          errorBorder: errorBorder,
          disabledBorder: border,
          focusedBorder: focusedBorder,
          focusedErrorBorder: errorBorder,
          prefixIcon: IconButton(
            icon: Icon(Icons.credit_card),
            onPressed: () {
              textController.clear();
            },
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.document_scanner_outlined),
            onPressed: () {
              textController.clear();
            },
          ),
        ),
      ),
    ],
  );
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

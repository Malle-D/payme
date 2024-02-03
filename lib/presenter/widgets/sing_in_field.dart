import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../utils/utils.dart';

Widget singInTextField(TextEditingController textController, FocusNode textFieldFocusNode) {

  var maskFormatter = MaskTextInputFormatter(
    mask: '+### ## ### ## ##',
    filter: {"#": RegExp(r'[0-9]')},
  );
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
  return TextField(
    focusNode: textFieldFocusNode,
    controller: textController,
    keyboardType: TextInputType.phone,
    style: const TextStyle(color: Colors.white),
    inputFormatters: [
      // FilteringTextInputFormatter.digitsOnly,
      LengthLimitingTextInputFormatter(17),
      maskFormatter
      // _PhoneNumberFormatter(),
    ],
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color(0xff141517),
      contentPadding: EdgeInsets.all(10),
      hintText: 'Telefon raqami',
      hintStyle: const TextStyle(
          color: Color(0xff3c3d42), fontWeight: FontWeight.w400),
      border: border,
      errorBorder: errorBorder,
      disabledBorder: border,
      focusedBorder: focusedBorder,
      focusedErrorBorder: errorBorder,
      prefixIcon: IconButton(
        icon: Icon(Icons.phone),
        onPressed: () {
          textController.clear();
        },
      ),
    ),
  );
}
Widget singInPassTextField(TextEditingController textController, FocusNode textFieldFocusNode) {
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
  return TextField(
    focusNode: textFieldFocusNode,
    controller: textController,
    keyboardType: TextInputType.text,
    style: const TextStyle(color: Colors.white),
    // inputFormatters: [
    //   FilteringTextInputFormatter.digitsOnly,
    //   LengthLimitingTextInputFormatter(16),
    //   _CreditCardNumberFormatter(),
    // ],
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color(0xff141517),
      contentPadding: EdgeInsets.all(10),
      hintText: 'Parol',
      hintStyle: const TextStyle(
          color: Color(0xff3c3d42), fontWeight: FontWeight.w400),
      border: border,
      errorBorder: errorBorder,
      disabledBorder: border,
      focusedBorder: focusedBorder,
      focusedErrorBorder: errorBorder,
      suffixIcon: IconButton(
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          textController.clear();
        },
      ),
    ),
  );
}

class _PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    final StringBuffer newText = StringBuffer();
    int count = 0;

    for (int i = 0; i < newValue.text.length; i++) {
      if (count == 4 || count == 2 || count == 3 || count == 2 || count == 2) {
        newText.write(' ');
        count = 0;
      }
      newText.write(newValue.text[i]);
      count++;
    }

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(
        offset: newText.length,
      ),
    );
  }
}

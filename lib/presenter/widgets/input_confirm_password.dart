
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payme_clone/utils/utils.dart';

class ConfirmPasswordInputWidget extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode inputNode;

  const ConfirmPasswordInputWidget({
    super.key,
    required this.controller,
    required this.inputNode,
  });

  @override
  _ConfirmPasswordInputWidgetState createState() => _ConfirmPasswordInputWidgetState();
}

class _ConfirmPasswordInputWidgetState extends State<ConfirmPasswordInputWidget> {
  bool obscureText = true;
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 5),
            child: Text(
              'Tekshiruv kodini kitiring',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: isFocused
                    ? Color(pantonColor)
                    : Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextFormField(
            // onChanged: widget.onChanged,
            autofocus: true,
            maxLength: 6,
            focusNode: widget.inputNode,
            controller: widget.controller,
            obscureText: obscureText,
            keyboardType: TextInputType.none,
            decoration: InputDecoration(
              hintText: 'Tekshiruv kodini kitiring',
              hintStyle:
              TextStyle(color: const Color(0xFFA3A6AE).withAlpha(50)),
              counterText: "",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(pantonColor),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(13.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(pantonColor),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(13.0),
              ),
              isDense: true,
              filled: true,
              fillColor: const Color(0xFF141517),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: Image.asset(
                  obscureText
                      ? 'assets/icons/ic_show_16.png'
                      : 'assets/icons/ic_hide_16.png',
                ),
              ),
            ),
            cursorColor: const Color(pantonColor),
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
            onChanged: (value) {
              setState(() {
                isFocused = widget.inputNode.hasFocus;
              });
            },
          ),
        ],
      ),
    );
  }
}
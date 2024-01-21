import 'package:flutter/material.dart';import 'package:google_fonts/google_fonts.dart';import 'package:payme_clone/utils/utils.dart';Widget buttonSearchWidget(void Function() onClick) {  return InkWell(    splashColor: Colors.white,    highlightColor: Colors.white,    onTap: onClick,    child: Container(      height: 45,      decoration: BoxDecoration(          color: const Color(0xFF141517),          borderRadius: BorderRadius.circular(12),          border: Border.all(color: const Color(0xFFA3A6AE).withAlpha(60))),      child: Row(        children: [          const SizedBox(width: 15),          Image.asset(            'assets/icons/ic_search_32.png',            color: const Color(darkerWhiteColor).withAlpha(200),            width: 20,            height: 20,          ),          const SizedBox(width: 15),          Text(            'Xizmatlarni qidirish',            style: GoogleFonts.poppins(                color: const Color(darkerWhiteColor).withAlpha(200),                fontSize: 13),          )        ],      ),    ),  );}
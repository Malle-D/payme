import 'package:flutter/material.dart';import 'package:google_fonts/google_fonts.dart';import 'package:payme_clone/utils/utils.dart';Widget buttonRegistration(void Function() onClick) {  return Container(    height: 45,    decoration: const BoxDecoration(        color: Color(pantonColor),        borderRadius: BorderRadius.all(Radius.circular(13))),    child: Center(      child: Text('Registration',          style: GoogleFonts.poppins(              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),    ),  );}
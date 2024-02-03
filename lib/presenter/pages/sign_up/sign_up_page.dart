
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payme_clone/presenter/widgets/input_text_widget.dart';
import 'package:payme_clone/utils/utils.dart';

import '../../widgets/btn_registration_widget.dart';
import '../../widgets/input_phone_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerFirstName = TextEditingController();
    final controllerLastName = TextEditingController();
    final controllerBornDate = TextEditingController();
    final controllerPhone = TextEditingController();
    final FocusNode inputPhoneNode = FocusNode();
    List<String> gender = ['Male', 'Female'];

    return Scaffold(
      backgroundColor: Color(primaryColor),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 56,),
            Text('Sign up', style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600, color: Color(darkerWhiteColor)),),
            SizedBox(height: primaryPadding,),

            inputPhoneWidget(controllerPhone, inputPhoneNode,
                    (text) {}),

            const SizedBox(height: primaryPadding,),

            InputTextWidget(hint: 'First Name', controller: controllerFirstName),

            InputTextWidget(hint: 'Last Name', controller: controllerLastName),

            InputTextWidget(hint: 'Born date', controller: controllerBornDate),

            const SizedBox(height: 8,),

            DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              hint: Row(
                  children: [
                    Text(
                      'Select gender...',
                      style: GoogleFonts.mulish(
                        color: const Color(darkerWhiteColor),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]
              ),
              //value: selectedValue,
              items: gender.map((item) => DropdownMenuItem<String>(
                value: item,
                child: Row(
                  children: [
                    item == 'Male' ? Icon(Icons.man, size: 24, color: Color(darkerWhiteColor),) : Icon(Icons.woman, size: 24, color: Color(darkerWhiteColor),),
                    SizedBox(width: 10,),
                    Text(
                      item,
                      style: const TextStyle(fontSize: 14, color: Color(darkerWhiteColor)),
                    ),
                  ],
                ),
              )).toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select language.';
                }
                return null;
              },
              // onSaved: (newValue) {
              //   selectedValue = LanguageModel(newValue!.img, newValue.lang, newValue.id);
              // },
              //value: selectedValue,
              onChanged: (value) {

              },
              // onSaved: (value) {
              //   selectedValue = value!;
              // },
              //value: selectedValue,
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Color(darkerWhiteColor),
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  color: Color(primaryColor),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),

            Spacer(),

            buttonRegistration(() {
              Navigator.pushReplacementNamed(context, 'confirm_password');
            }),

            const SizedBox(height: primaryPadding,),
          ],
        ),
      ),
    );
  }
}

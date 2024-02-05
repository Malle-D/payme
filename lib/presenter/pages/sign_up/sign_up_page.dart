import 'dart:ffi';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payme_clone/data/models/sign_up/sign_up_model.dart';
import 'package:payme_clone/presenter/pages/sign_up/bloc/sign_up_bloc.dart';
import 'package:payme_clone/presenter/widgets/input_password_widget.dart';
import 'package:payme_clone/presenter/widgets/input_text_widget.dart';
import 'package:payme_clone/utils/utils.dart';

import '../../widgets/btn_registration_widget.dart';
import '../../widgets/input_born_widget.dart';
import '../../widgets/input_phone_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final controllerFirstName = TextEditingController();
final controllerLastName = TextEditingController();
final controllerBornDate = TextEditingController();
final controllerBornDateMilli = TextEditingController();
final controllerPhone = TextEditingController();
final controllerPassword = TextEditingController();
final FocusNode inputPhoneNode = FocusNode();

class _SignUpPageState extends State<SignUpPage> {
  final bloc = SignUpBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> gender = ['Male', 'Female'];

    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Color(primaryColor),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 56,
                      ),
                      Text(
                        'Sign up',
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(darkerWhiteColor)),
                      ),
                      const SizedBox(
                        height: primaryPadding,
                      ),
                      inputPhoneWidget(
                          controllerPhone, inputPhoneNode, (text) {}),
                      const SizedBox(
                        height: primaryPadding,
                      ),
                      InputTextWidget(
                          hint: 'First Name', controller: controllerFirstName),
                      InputTextWidget(
                          hint: 'Last Name', controller: controllerLastName),
                      InputBornWidget(
                        () {
                          _selectDate();
                          print('-------------------------');
                        },
                        hint: 'Born date',
                        controller: controllerBornDate,
                        realOnly: true,
                      ),
                      PasswordInputWidget(
                          controller: controllerPassword,
                          inputNode: FocusNode()),
                      const SizedBox(
                        height: 8,
                      ),
                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        hint: Row(children: [
                          Text(
                            'Select gender...',
                            style: GoogleFonts.mulish(
                              color: const Color(darkerWhiteColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                        //value: selectedValue,
                        items: gender
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Row(
                                    children: [
                                      item == 'Male'
                                          ? const Icon(
                                              Icons.man,
                                              size: 24,
                                              color: Color(darkerWhiteColor),
                                            )
                                          : const Icon(
                                              Icons.woman,
                                              size: 24,
                                              color: Color(darkerWhiteColor),
                                            ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        item,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Color(darkerWhiteColor)),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
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
                        onChanged: (value) {},
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
                        bloc.add(SignUpUserEvent(SignUpModel(
                            '+998${controllerPhone.text.replaceAll(' ', '')}',
                            controllerPassword.text,
                            controllerFirstName.text,
                            controllerLastName.text,
                            controllerBornDateMilli.text,
                            0)));
                      }),
                      const SizedBox(
                        height: primaryPadding,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        initialDate: DateTime.now());

    if (_picked != null) {
      setState(() {
        print(_picked.millisecondsSinceEpoch);
        controllerBornDate.text = _picked.toString().split(' ')[0];
        controllerBornDateMilli.text =
            _picked.millisecondsSinceEpoch.toString();
      });
    }
  }
}

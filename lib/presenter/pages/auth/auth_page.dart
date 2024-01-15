import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:google_fonts/google_fonts.dart';import 'package:payme_clone/data/models/auth_model.dart';import 'package:payme_clone/utils/utils.dart';import '../../widgets/btn_done_widget.dart';import '../../widgets/btn_registration_widget.dart';import '../../widgets/input_password_widget.dart';import '../../widgets/input_phone_widget.dart';import 'bloc/auth_bloc.dart';class AuthPage extends StatefulWidget {  const AuthPage({super.key});  @override  State<AuthPage> createState() => _AuthPageState();}class _AuthPageState extends State<AuthPage> {  final TextEditingController controllerNumber = TextEditingController();  final TextEditingController controllerPassword = TextEditingController();  final FocusNode inputPhoneNode = FocusNode();  final FocusNode inputPasswordNode = FocusNode();  String authBehaviour = '0'; // 0 = default, 1 = registered, 2 = not registered  final _bloc = AuthBloc();  void openKeyboard() {    FocusScope.of(context).requestFocus(inputPhoneNode);  }  @override  void initState() {    super.initState();  }  @override  void dispose() {    _bloc.close();    controllerNumber.dispose();    controllerPassword.dispose();    super.dispose();  }  @override  Widget build(BuildContext context) {    return BlocProvider.value(      value: _bloc,      child: BlocConsumer<AuthBloc, AuthState>(        listener: (context, state) {          if (state is AuthSuccessState) {            print('success');            inputPhoneNode.unfocus();            authBehaviour = "1";          } else if (state is AuthFailState) {            print('failed');            authBehaviour = "2";          }        },        builder: (context, state) {          return Scaffold(            backgroundColor: const Color(primaryColor),            body: Column(              children: [                if (authBehaviour == '1' && controllerNumber.text.length == 12)                  const SizedBox(height: primaryPadding),                if (authBehaviour == '1' && controllerNumber.text.length == 12)                  Column(                    children: [                      const SizedBox(height: primaryPadding),                      Row(                        mainAxisAlignment: MainAxisAlignment.end,                        children: [                          Padding(                            padding: const EdgeInsets.all(8.0),                            child: Text(                              'Forgot password',                              style: GoogleFonts.poppins(                                  color: const Color(darkerWhiteColor),                                  fontWeight: FontWeight.w500),                            ),                          ),                        ],                      ),                    ],                  ),                if (authBehaviour == '0' && controllerNumber.text.length == 12)                const SizedBox(height: primaryPadding),                Center(                  child: Image.asset('assets/icons/ic_payme.png',                      color: Colors.white, height: 110),                ),                if (authBehaviour == '0' && controllerNumber.text.length == 12)                  const SizedBox(height: primaryPadding),                Padding(                  padding: const EdgeInsets.only(                      right: primaryPadding, left: primaryPadding),                  child: inputPhoneWidget(controllerNumber, inputPhoneNode,                      (text) {                    if (text.length == 12) {                      _bloc.add(AuthCheckEvent(                          AuthModel('+998${text.trim().replaceAll(' ', '')}')));                    } else {                      authBehaviour = '0';                    }                  }),                ),                const SizedBox(height: primaryPadding),                // SuccessState                if (authBehaviour == '1' && controllerNumber.text.length == 12)                  Padding(                      padding: const EdgeInsets.only(                          right: primaryPadding, left: primaryPadding),                      child: PasswordInputWidget(                        controller: controllerPassword,                        inputNode: inputPasswordNode,                      )),                if (authBehaviour == '1' && controllerNumber.text.length == 12)                  const Spacer(),                if (authBehaviour == '1' && controllerNumber.text.length == 12)                  Padding(                    padding: const EdgeInsets.all(primaryPadding),                    child:                        buttonDone(controllerPassword.text.length > 6, () {}),                  ),                // -----------                // FailState                if (authBehaviour == '2' && controllerNumber.text.length == 12)                  const Spacer(),                if (authBehaviour == '2' && controllerNumber.text.length == 12)                  failState(),                // ---------              ],            ),          );        },      ),    );  }}Widget failState() {  return Padding(    padding: const EdgeInsets.all(primaryPadding),    child: Column(      children: [        Center(          child: Text(            'By pressing the "Registration" You accept',            style: GoogleFonts.poppins(                fontSize: 11,                fontWeight: FontWeight.w300,                color: const Color(darkerWhiteColor)),          ),        ),        Center(          child: Text(            'terms of use',            style: GoogleFonts.poppins(                fontSize: 12, color: const Color(pantonColor)),          ),        ),        const SizedBox(height: 10),        buttonRegistration(() {})      ],    ),  );}
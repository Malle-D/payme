import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payme_clone/data/models/sing_in/sign_in_model.dart';
import 'package:payme_clone/utils/utils.dart';
import '../../widgets/btn_registration_widget.dart';
import '../../widgets/sing_in_field.dart';
import 'bloc/sing_in_bloc.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  final TextEditingController controllerNumber = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final FocusNode inputNumberNode = FocusNode();
  final FocusNode inputPasswordNode = FocusNode();
  final _bloc = SingInBloc();


  @override
  void dispose() {
    _bloc.close();
    controllerNumber.dispose();
    controllerPassword.dispose();
    inputNumberNode.dispose();
    inputPasswordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocConsumer<SingInBloc, SingInState>(
        listener: (context, state) {
          if(state is SuccessState){
            Navigator.pushNamed(context, 'confirm_password');
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(primaryColor),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: primaryPadding),
                  Text('Sing In', style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: const Color(darkerWhiteColor)
                  )),
                  const SizedBox(height: primaryPadding),
                  singInTextField(controllerNumber,inputNumberNode),
                  const SizedBox(height: primaryPadding,),
                  singInPassTextField(controllerPassword,inputPasswordNode),
                  const Spacer(),
                  InkWell(
                    onTap: (){
                      print('***************** ${controllerNumber.text}');
                      _bloc.add(SignInUserEvent(SignInModel(controllerNumber.text.replaceAll(' ', ''), controllerPassword.text)));
                    },
                    child: Container(
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
                              "Sing In",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

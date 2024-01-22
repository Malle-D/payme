import 'package:flutter/material.dart';
import 'package:payme_clone/presenter/widgets/input_confirm_password.dart';
import 'package:payme_clone/presenter/widgets/keyboard_confirm_password_widget.dart';
import 'package:payme_clone/utils/utils.dart';

class ConfirmPasswordPage extends StatefulWidget {
  const ConfirmPasswordPage({super.key});

  @override
  State<ConfirmPasswordPage> createState() => _ConfirmPasswordPageState();
}

class _ConfirmPasswordPageState extends State<ConfirmPasswordPage> {
  final TextEditingController controllerConfirmPassword = TextEditingController();
  final FocusNode inputConfirmPasswordNode = FocusNode();
  var isFull = false;

  @override
  Widget build(BuildContext context) {
    if(controllerConfirmPassword.text.length ==6 ) isFull = true; else isFull = false;
    return Scaffold(
      backgroundColor: Color(primaryColor),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 35),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_outlined, color: Colors.grey,)),
                Spacer(),
                Text('Tayyor', style: TextStyle(color: Color(disableTextColor), fontWeight: FontWeight.w700, fontSize: 16),)
              ],
            ),
          ),
          const SizedBox(height: primaryPadding*4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: primaryPadding),
            child: ConfirmPasswordInputWidget(controller: controllerConfirmPassword, inputNode: inputConfirmPasswordNode),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: primaryPadding),
            child: KeyboardConfirmPassword(delete: (){
              controllerConfirmPassword.text = controllerConfirmPassword.text
                  .substring(0, controllerConfirmPassword.text.length - 1);
            }, onSubmit: (){
              Navigator.pushReplacementNamed(context, 'pin_code');

            }, controller: controllerConfirmPassword, ),
          ),
          SizedBox(height: primaryPadding,)
        ],
      ),
    );
  }
}

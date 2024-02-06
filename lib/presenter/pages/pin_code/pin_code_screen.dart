import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payme_clone/data/preference/my_preference.dart';
import 'package:payme_clone/utils/utils.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({super.key});

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  String enteredPin = '';
  bool isPinVisible = false;

  /// this widget will be use for each digit
  Widget numButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (enteredPin.length < 4) {
              enteredPin += number.toString();
            }
          });
        },
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(primaryColor),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 60,),
             Center(
              child: Text(
                MyPreference.getPinCode().isEmpty ? 'PIN-kod o`rnatish?' : 'PIN-kodni kiriting',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 50),

            /// pin code area
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                    (index) {
                  return Container(
                    margin: const EdgeInsets.all(6.0),
                    width: isPinVisible ? 50 : 16,
                    height: isPinVisible ? 50 : 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: index < enteredPin.length
                          ? isPinVisible
                          ? Colors.white70
                          : Colors.white70
                          : CupertinoColors.activeBlue.withOpacity(0.1),
                    ),
                    child: isPinVisible && index < enteredPin.length
                        ? Center(
                      child: Text(
                        enteredPin[index],
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                        : null,
                  );
                },
              ),
            ),

            /// visiblity toggle button
            SizedBox(height: 300,),
            // IconButton(
            //   onPressed: () {
            //     setState(() {
            //       isPinVisible = !isPinVisible;
            //     });
            //   },
            //   icon: Icon(
            //     isPinVisible ? Icons.visibility_off : Icons.visibility,
            //   ),
            // ),

            SizedBox(height: isPinVisible ? 50.0 : 8.0),
            /// digits
            for (var i = 0; i < 3; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                        (index) => numButton(1 + 3 * i + index),
                  ).toList(),
                ),
              ),

            /// 0 digit with back remove
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextButton(onPressed: null, child: SizedBox()),
                  numButton(0),
                  TextButton(
                    onPressed: () {
                      setState(
                            () {
                          if (enteredPin.isNotEmpty) {
                            enteredPin =
                                enteredPin.substring(0, enteredPin.length - 1);
                          }
                        },
                      );
                    },
                    child: const Icon(
                      Icons.backspace,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),


            /// reset button
            TextButton(
              onPressed: () {
                if(MyPreference.getPinCode().isEmpty) {
                  MyPreference.setPinCode(enteredPin);
                  Navigator.pushReplacementNamed(context, 'landing');
                }else{
                  if(MyPreference.getPinCode() == enteredPin) {
                    Navigator.pushReplacementNamed(context, 'landing');
                  }else{
                    enteredPin = "";
                    setState(() {

                    });
                  }
                }
                },
              child: const Text(
                'Submit',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

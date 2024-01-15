
import 'package:flutter/material.dart';
import 'package:payme_clone/utils/utils.dart';

class IntroLanguageScreen extends StatelessWidget {
  const IntroLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(primaryColor),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image.asset('assets/icons/ic_payme.png', height: 84),
            Spacer(),

            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: 150,
                child: Column(
                  children: [
                    Spacer(),
                    Center(child: Text('Ozbekcha', style: TextStyle(fontSize: 20, color: Color(darkerWhiteColor)),)),
                    Spacer(),
                    Divider(height: 1, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: 150,
                child: Column(
                  children: [
                    Spacer(),
                    Center(child: Text('Ozbekcha', style: TextStyle(fontSize: 20, color: Color(darkerWhiteColor)),)),
                    Spacer(),
                    Divider(height: 1, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: 150,
                child: Column(
                  children: [
                    Spacer(),
                    Center(child: Text('Ozbekcha', style: TextStyle(fontSize: 20, color: Color(darkerWhiteColor)),)),
                    Spacer()
                  ],
                ),
              ),
            ),

            Spacer(),

            Text('Version 2.44.0', style: TextStyle(color: Color(darkerWhiteColor)),),
            SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
}

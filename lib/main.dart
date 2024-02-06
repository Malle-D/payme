import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:payme_clone/data/preference/my_preference.dart';
import 'package:payme_clone/di/di.dart';
import 'package:payme_clone/presenter/pages/add_card/add_card_page.dart';
import 'package:payme_clone/presenter/pages/auth/auth_page.dart';
import 'package:payme_clone/presenter/pages/cards/cards_page.dart';
import 'package:payme_clone/presenter/pages/confirm_password/confirm_password_page.dart';
import 'package:payme_clone/presenter/pages/intro_language/intro_language_screen.dart';
import 'package:payme_clone/presenter/pages/payment/payment_page.dart';
import 'package:payme_clone/presenter/pages/pin_code/pin_code_screen.dart';
import 'package:payme_clone/presenter/pages/home/home_page.dart';
import 'package:payme_clone/presenter/pages/service/services_page.dart';
import 'package:payme_clone/presenter/pages/sign_up/bloc/sign_up_bloc.dart';
import 'package:payme_clone/presenter/pages/sign_up/sign_up_page.dart';
import 'package:payme_clone/presenter/pages/sing_in/sing_in.dart';
import 'package:payme_clone/presenter/pages/theme/theme_page.dart';
import 'package:payme_clone/presenter/screens/landing/landing_screen.dart';
import 'package:payme_clone/utils/utils.dart';

import 'firebase_options.dart';

void main() async {
  setup();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(primaryColor),
  ));

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  MyPreference.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Payme',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: const Color(pantonColor)),
          useMaterial3: true,
        ),
        initialRoute: MyPreference.isSelectLang() ? MyPreference.isRegistered() ? 'pin_code' : 'sign_up' : 'intro_language' ,
        routes: {
          'auth': (context) => const AuthPage(),
          'sign_up': (context) => const SignUpPage(),
          'sign_in': (context) => const SingIn(),
          'intro_language': (context) => const IntroLanguageScreen(),
          'confirm_password': (context) => const ConfirmPasswordPage(),
          'pin_code': (context) => const PinCodeScreen(),
          'home': (context) => HomePage(),
          'payment': (context) => const PaymentPage(),
          'services': (context) => const ServicesPage(),
          'landing': (context) => const LandingScreen(currentPage: 0),
          'theme': (context) => const ThemePage(),
          'cards' : (context) => const CardsPage(),
          'add_card' : (context) => AddCardPage(),
        });
  }
}

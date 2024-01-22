import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:payme_clone/di/di.dart';
import 'package:payme_clone/presenter/pages/auth/auth_page.dart';
import 'package:payme_clone/presenter/pages/confirm_password/confirm_password_page.dart';
import 'package:payme_clone/presenter/pages/intro_language/intro_language_screen.dart';
import 'package:payme_clone/presenter/pages/payment/payment_page.dart';
import 'package:payme_clone/presenter/pages/pin_code/pin_code_screen.dart';
import 'package:payme_clone/presenter/pages/home/home_page.dart';
import 'package:payme_clone/presenter/pages/service/services_page.dart';
import 'package:payme_clone/utils/utils.dart';

import 'firebase_options.dart';

void main() async {
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

  setup();

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(pantonColor)),
        useMaterial3: true,
      ),
      initialRoute: 'intro_language',
      routes: {
        'auth': (context) => const AuthPage(),
        'intro_language': (context) => const IntroLanguageScreen(),
        'confirm_password': (context) => const ConfirmPasswordPage(),
        'pin_code': (context) => const PinCodeScreen(),
        'home': (context) => const HomePage(),
        'payment': (context) => const PaymentPage(),
        'services': (context) => const ServicesPage()
      }
    );
  }
}

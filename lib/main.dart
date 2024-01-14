import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:payme_clone/presenter/pages/auth/auth_page.dart';
import 'package:payme_clone/utils/utils.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();

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
      initialRoute: 'auth',
      routes: {
        'auth': (context) => const AuthPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payme_clone/presenter/pages/cash/cash_flow_page.dart';
import 'package:payme_clone/presenter/pages/home/home_page.dart';
import 'package:payme_clone/presenter/pages/payment/payment_page.dart';
import 'package:payme_clone/presenter/pages/service/services_page.dart';
import 'package:payme_clone/presenter/pages/transfer/transfer_page.dart';
import 'package:payme_clone/utils/utils.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.swap_horiz),
      label: 'Transfer',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.payment),
      label: 'Payment',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: 'Services',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.perm_identity_outlined),
      label: 'Cash flow',
    )
  ];

  List<Widget> bottomNavScreen = <Widget>[
    const HomePage(),
    const TransferPage(),
    const PaymentPage(),
    const ServicesPage(),
    const CashFlowPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        backgroundColor: const Color(bottomNavBarBg),
        selectedItemColor: const Color(tealColor),
        unselectedItemColor: const Color(bottomNavBarItemDisable),
        selectedLabelStyle: const TextStyle(
            color: Color(tealColor)
        ),
        unselectedLabelStyle: const TextStyle(
            color: Color(bottomNavBarItemDisable)
        ),
        onTap: (value) {
          // Respond to item press.
          setState(() => currentIndex = value);
        },
        items: bottomNavItems,
      ),
    );
  }
}

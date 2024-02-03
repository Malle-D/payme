import 'package:flutter/material.dart';
import 'package:payme_clone/presenter/pages/cash/cash_flow_page.dart';
import 'package:payme_clone/presenter/pages/home/home_page.dart';
import 'package:payme_clone/presenter/pages/payment/payment_page.dart';
import 'package:payme_clone/presenter/pages/service/services_page.dart';
import 'package:payme_clone/presenter/pages/transfer/transfer_page.dart';
import 'package:payme_clone/utils/utils.dart';

class LandingScreen extends StatefulWidget {
  final int currentPage;
  const LandingScreen({required this.currentPage, super.key});
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  int currentIndex = 0;

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = HomePage();

  List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: 'Asosiy',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.swap_horiz),
      label: "O'tkazma",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.payment),
      label: "To'lov",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: 'Servislar',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.access_time),
      label: 'Kirim-chiqim',
    )
  ];

  List<Widget> bottomNavScreen = <Widget>[
    HomePage(),
    const TransferPage(),
    const PaymentPage(),
    const ServicesPage(),
    const CashFlowPage(),
  ];

  @override
  void initState() {

    currentIndex = widget.currentPage;

    if(currentIndex == 4){
      currentScreen = const CashFlowPage();
    } else if(currentIndex == 3){
      currentScreen = const ServicesPage();
    } else if (currentIndex == 2) {
      currentScreen = const PaymentPage();
    } else if (currentIndex == 1) {
      currentScreen = const TransferPage();
    } else {
      currentScreen = HomePage();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    currentScreen = bottomNavScreen[currentIndex];
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent
        ),
        child: BottomNavigationBar(
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
          onTap: (int index) {
            setState(() {
              currentScreen = bottomNavScreen[index];
              currentIndex = index;
            });
          },
          items: bottomNavItems,
        ),
      ),
    );
  }
}

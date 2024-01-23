import 'package:flutter/material.dart';import 'package:flutter_svg/svg.dart';import 'package:google_fonts/google_fonts.dart';import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';import 'package:payme_clone/utils/utils.dart';import '../../widgets/btn_search_widget.dart';import '../../widgets/slider_item.dart';class HomePage extends StatelessWidget {  const HomePage({Key? key}) : super(key: key);  Future<void> _handleRefresh() async {    //....    return await Future.delayed(const Duration(seconds: 2));  }  @override  Widget build(BuildContext context) {    final maxWith = MediaQuery.of(context).size.width;    return Scaffold(      backgroundColor: const Color(tealColor),      body: SafeArea(        child: Stack(          children: [            LiquidPullToRefresh(              color: const Color(tealColor),              height: 110,              springAnimationDurationInMilliseconds: 100,              showChildOpacityTransition: false,              onRefresh: _handleRefresh,              child: CustomScrollView(                slivers: [                  SliverToBoxAdapter(                    child: Column(                      children: [                        Container(                          color: const Color(tealColor),                          width: maxWith,                          child: Column(                            crossAxisAlignment: CrossAxisAlignment.center,                            children: [                              const SizedBox(                                height: primaryPadding +                                    primaryPadding +                                    primaryPadding +                                    primaryPadding,                              ),                              Text(                                'Umumiy balans',                                style: GoogleFonts.poppins(                                    fontSize: 13,                                    fontWeight: FontWeight.w500,                                    color: Colors.white),                              ),                              const SizedBox(height: 5),                              Row(                                mainAxisAlignment: MainAxisAlignment.center,                                children: [                                  Image.asset(                                    'assets/icons/ic_invisible_24.png',                                    width: 20,                                    height: 20,                                  ),                                  const SizedBox(width: primaryPadding),                                  Row(                                    crossAxisAlignment: CrossAxisAlignment.end,                                    children: [                                      Text(                                        '0',                                        style: GoogleFonts.poppins(                                            fontSize: 30,                                            fontWeight: FontWeight.w600,                                            color: Colors.white),                                      ),                                      Padding(                                        padding: const EdgeInsets.all(5.0),                                        child: Text(                                          'so\'m',                                          style: GoogleFonts.poppins(                                              color: Colors.white),                                        ),                                      ),                                    ],                                  ),                                  const SizedBox(                                    width: primaryPadding,                                  ),                                  const Icon(                                    Icons.more_vert_rounded,                                    color: Colors.white,                                  )                                ],                              ),                              const SizedBox(height: primaryPadding),                              Text(                                'Yanvardagi chiqim - 0 so\'m',                                style: GoogleFonts.poppins(                                    fontSize: 12,                                    fontWeight: FontWeight.w500,                                    color: Colors.white),                              ),                              const SizedBox(height: primaryPadding + 10),                              Row(                                mainAxisAlignment:                                    MainAxisAlignment.spaceEvenly,                                children: [                                  Column(                                    children: [                                      Container(                                        width: 70,                                        height: 70,                                        decoration: BoxDecoration(                                            boxShadow: const <BoxShadow>[                                              BoxShadow(                                                  color: Colors.black54,                                                  blurRadius: 1.0,                                                  offset: Offset(0.0, 0.75))                                            ],                                            color: Colors.white,                                            borderRadius:                                                BorderRadius.circular(100)),                                        child: Center(                                          child: Padding(                                            padding: const EdgeInsets.all(16.0),                                            child: Image.asset(                                                'assets/icons/ic_card2_32.png'),                                          ),                                        ),                                      ),                                      const SizedBox(height: primaryPadding),                                      Text(                                        'Kartalarim',                                        style: GoogleFonts.poppins(                                            fontSize: 12,                                            fontWeight: FontWeight.w500,                                            color: Colors.white),                                      ),                                    ],                                  ),                                  Column(                                    children: [                                      Container(                                        width: 70,                                        height: 70,                                        decoration: BoxDecoration(                                            boxShadow: const <BoxShadow>[                                              BoxShadow(                                                  color: Colors.black54,                                                  blurRadius: 1.0,                                                  offset: Offset(0.0, 0.75))                                            ],                                            color: Colors.white,                                            borderRadius:                                                BorderRadius.circular(100)),                                        child: Center(                                          child: Padding(                                            padding: const EdgeInsets.all(11.0),                                            child: Image.asset(                                                'assets/icons/ic_paymego.png'),                                          ),                                        ),                                      ),                                      const SizedBox(height: primaryPadding),                                      Text(                                        'Payme GO',                                        style: GoogleFonts.poppins(                                            fontSize: 12,                                            fontWeight: FontWeight.w500,                                            color: Colors.white),                                      ),                                    ],                                  ),                                  Column(                                    children: [                                      Container(                                        width: 70,                                        height: 70,                                        decoration: BoxDecoration(                                            boxShadow: const <BoxShadow>[                                              BoxShadow(                                                  color: Colors.black54,                                                  blurRadius: 1.0,                                                  offset: Offset(0.0, 0.75))                                            ],                                            color: Colors.white,                                            borderRadius:                                                BorderRadius.circular(100)),                                        child: Center(                                          child: Padding(                                            padding: const EdgeInsets.all(18.0),                                            child: Image.asset(                                                'assets/icons/ic_scanner_32.png'),                                          ),                                        ),                                      ),                                      const SizedBox(height: primaryPadding),                                      Text(                                        'QR to\'lov',                                        style: GoogleFonts.poppins(                                            fontSize: 12,                                            fontWeight: FontWeight.w500,                                            color: Colors.white),                                      ),                                    ],                                  ),                                ],                              ),                              const SizedBox(height: primaryPadding + 10),                            ],                          ),                        ),                        Container(                          decoration: const BoxDecoration(                              color: Color(primaryColor),                              borderRadius: BorderRadius.only(                                  topRight: Radius.circular(15),                                  topLeft: Radius.circular(15))),                          height: 800,                          child: Column(                            crossAxisAlignment: CrossAxisAlignment.start,                            children: [                              Padding(                                padding: const EdgeInsets.only(                                    top: 30, right: 15, left: 15),                                child: buttonSearchWidget(() {}),                              ),                              const SizedBox(                                  height: primaryPadding + primaryPadding),                              Padding(                                padding:                                    const EdgeInsets.symmetric(horizontal: 15),                                child: Text(                                  'Moliyaviy xizmatlar',                                  style: GoogleFonts.poppins(                                      fontSize: 15,                                      fontWeight: FontWeight.w500,                                      color: Colors.white),                                ),                              ),                              const SizedBox(height: primaryPadding + 5),                              Padding(                                padding:                                    const EdgeInsets.symmetric(horizontal: 15),                                child: Row(                                  mainAxisAlignment:                                      MainAxisAlignment.spaceAround,                                  children: [                                    financialServicesItem(                                        'assets/icons/ic_transfer.svg',                                        'Pul o\'tlazish',                                        true),                                    const SizedBox(width: 10),                                    financialServicesItem(                                        'assets/icons/ic_loan.png',                                        'TBC Bankdan kredit',                                        false),                                  ],                                ),                              ),                              const SizedBox(                                  height: primaryPadding + primaryPadding),                              Padding(                                padding:                                    const EdgeInsets.symmetric(horizontal: 15),                                child: Row(                                  children: [                                    Text(                                      'Saqlangan to\'lovlar',                                      style: GoogleFonts.poppins(                                          fontSize: 15,                                          fontWeight: FontWeight.w500,                                          color: Colors.white),                                    ),                                    const Spacer(),                                    Text(                                      'Yana',                                      style: GoogleFonts.poppins(                                          fontSize: 15,                                          fontWeight: FontWeight.w500,                                          color: const Color(tealColor)),                                    ),                                  ],                                ),                              ),                              const SizedBox(                                  height: primaryPadding + primaryPadding),                              Padding(                                padding:                                    const EdgeInsets.symmetric(horizontal: 15),                                child: SizedBox(                                  height: 110,                                  child: ListView.builder(                                      scrollDirection: Axis.horizontal,                                      itemCount: 3,                                      itemBuilder: (context, index) {                                        return index != 2                                            ? buildFavouriteItem(                                                'assets/logo/logo_payme_light.png',                                                'Mening telefon raqamim',                                                '+998900000000')                                            : SizedBox(                                                width: 110,                                                height: 110,                                                child: Center(                                                  child: Column(                                                    mainAxisAlignment:                                                        MainAxisAlignment                                                            .center,                                                    crossAxisAlignment:                                                        CrossAxisAlignment                                                            .center,                                                    children: [                                                      Container(                                                        width: 30,                                                        height: 30,                                                        decoration: BoxDecoration(                                                            color: const Color(                                                                tealColor),                                                            borderRadius:                                                                BorderRadius                                                                    .circular(                                                                        7)),                                                        child: const Icon(                                                            Icons.add_rounded),                                                      ),                                                      const SizedBox(                                                          height: 10),                                                      const Text(                                                        "Qo'shish",                                                        style: TextStyle(                                                            fontSize: 12,                                                            color: Color(                                                                0xFF989EA3)),                                                        overflow: TextOverflow                                                            .ellipsis,                                                      ),                                                    ],                                                  ),                                                ),                                              );                                      }),                                ),                              ),                              const SizedBox(                                  height: primaryPadding + primaryPadding),                              const SizedBox(                                  height: 100,                                  child: ImageSlider(imgList: [                                    "assets/images/banner1.jpg",                                    "assets/images/banner2.jpg",                                    "assets/images/banner3.jpg",                                  ])),                              const SizedBox(                                  height: primaryPadding + primaryPadding),                              Padding(                                padding:                                    const EdgeInsets.symmetric(horizontal: 15),                                child: Row(                                  children: [                                    Text(                                      'Mening uyim',                                      style: GoogleFonts.poppins(                                          fontSize: 15,                                          fontWeight: FontWeight.w500,                                          color: Colors.white),                                    ),                                    const Spacer(),                                    Text(                                      'Yana',                                      style: GoogleFonts.poppins(                                          fontSize: 15,                                          fontWeight: FontWeight.w500,                                          color: const Color(tealColor)),                                    ),                                  ],                                ),                              ),                            ],                          ),                        ),                      ],                    ),                  ),                ],              ),            ),            topAppBar(),          ],        ),      ),    );  }  Padding buildFavouriteItem(String image, String title, String number) =>      Padding(        padding: const EdgeInsets.only(right: 8.0),        child: Container(          width: 110,          height: 110,          decoration: BoxDecoration(              borderRadius: BorderRadius.circular(15),              color: const Color(0xFF32353F)),          child: Column(            children: [              Flexible(                  flex: 1,                  child: Container(                    decoration: const BoxDecoration(                      borderRadius: BorderRadius.only(                          topLeft: Radius.circular(15),                          topRight: Radius.circular(15)),                      color: Colors.white,                    ),                    width: 110,                    child: Image.asset(                      image,                      width: 55,                      height: 50,                    ),                  )),              Flexible(                  flex: 1,                  child: Padding(                    padding: const EdgeInsets.symmetric(horizontal: 4),                    child: Column(                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,                      children: [                        Text(                          title,                          overflow: TextOverflow.ellipsis,                          style:                              const TextStyle(color: Color(darkerWhiteColor)),                        ),                        Text(                          number,                          style: const TextStyle(                              fontSize: 11, color: Color(0xFF989EA3)),                          overflow: TextOverflow.ellipsis,                        ),                      ],                    ),                  )),            ],          ),        ),      );}Widget financialServicesItem(String img, String title, bool isPng) {  return Container(    height: 60,    decoration: BoxDecoration(        borderRadius: BorderRadius.circular(15),        color: const Color(lighterDarkColor)),    child: Padding(      padding: const EdgeInsets.all(8.0),      child: Row(        children: [          if (isPng) SvgPicture.asset(img),          if (isPng == false) Image.asset(img),          const SizedBox(width: 10),          SizedBox(            width: 100,            child: Text(              title,              style: GoogleFonts.poppins(color: Colors.white.withAlpha(200)),            ),          )        ],      ),    ),  );}Widget topAppBar() {  return const Padding(    padding: EdgeInsets.all(12),    child: Row(      children: [        Icon(          Icons.menu,          color: Color(0xFFfefeff),        ),        Spacer(),        Icon(Icons.notifications_none_rounded, color: Colors.white),      ],    ),  );}
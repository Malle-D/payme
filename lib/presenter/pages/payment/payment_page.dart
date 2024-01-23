

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payme_clone/presenter/widgets/btn_search_widget.dart';

import '../../../utils/utils.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(primaryColor),
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Payment', style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.white
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: primaryPadding, right: primaryPadding, top: 8, bottom: 8),
                  child: buttonSearchWidget(() { })
                )
              ]
            ),
            Flexible(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        //saved payment
                        Padding(
                          padding: const EdgeInsets.only(left: primaryPadding, right: primaryPadding, top: primaryPadding, bottom: primaryPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Saved payments', style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(darkerWhiteColor)
                              )),
                              Text('More', style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(tealColor)
                              )),
                            ],
                          ),
                        ),
                        Container(
                          height: 110,
                          margin: EdgeInsets.only(left: 8),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.only(left: 8),
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFF32353F)
                                ),
                                child: Column(
                                  children: [
                                    Flexible(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                                            color: Colors.white,
                                          ),
                                      width: 110,
                                      child: Image.asset('assets/logo/logo_payme_light.png', width: 55, height: 50,),)),
                                    Flexible(
                                        flex: 1,
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Mening telefon raqamim', overflow: TextOverflow.ellipsis, style: TextStyle(color: Color(darkerWhiteColor)),),
                                          Text('+998977339944',style: TextStyle(fontSize: 11, color: Color(0xFF989EA3)), overflow: TextOverflow.ellipsis, ),
                                        ],
                                      ),
                                    )),
                                  ],
                                ),
                              ),

                          ),
                        ),
                        SizedBox(height: primaryPadding,),

                        //for services
                        Padding(
                          padding: const EdgeInsets.only(left: primaryPadding, right: primaryPadding, top: primaryPadding, bottom: primaryPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Payment for services', style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(darkerWhiteColor)
                              )),
                              Text('More', style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(tealColor)
                              )),
                            ],
                          ),
                        ),
                        Container(
                          height: 110,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.only(left: index ==0 ? 16 : 8, right: index == 10 ? 8 : 0),
                              width: 110,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFF32353F)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.phone_android_outlined, size: 32, color: Color(darkerWhiteColor),),
                                    Text('+9989773399555999944',style: TextStyle(fontSize: 11, color: Color(darkerWhiteColor)), overflow: TextOverflow.ellipsis, maxLines: 2, textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                            ),

                          ),
                        ),
                        SizedBox(height: primaryPadding,),

                        //my home
                        Padding(
                          padding: const EdgeInsets.only(left: primaryPadding, right: primaryPadding, top: primaryPadding, bottom: primaryPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('My home', style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(darkerWhiteColor)
                              )),
                              Text('More', style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(tealColor)
                              )),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.only(left: index ==0 ? 16 : 8, right: index == 10 ? 8 : 0),
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFF32353F)
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: primaryPadding,),
                                  Icon(Icons.phone_android_outlined, size: 24, color: Color(darkerWhiteColor),),
                                  SizedBox(width: primaryPadding,),
                                  Text('Tashkent',style: TextStyle(fontSize: 15, color: Color(darkerWhiteColor), fontWeight: FontWeight.w500), overflow: TextOverflow.ellipsis, maxLines: 2, textAlign: TextAlign.center,),
                                  Spacer(),
                                  Icon(Icons.visibility_off, color: Color(0xFF989EA3),),
                                  SizedBox(width: primaryPadding,)
                                ],
                              ),
                            ),

                          ),
                        ),
                        SizedBox(height: primaryPadding,),

                        //by location
                        Padding(
                          padding: const EdgeInsets.only(left: primaryPadding, right: primaryPadding, top: primaryPadding, bottom: primaryPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Payment by location', style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(darkerWhiteColor)
                              )),
                              Text('More', style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(tealColor)
                              )),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 120,
                    crossAxisCount: 1
                  ),
                    itemCount: 10,
                    itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.only(left: 16, bottom: 8),
                    width: 300,
                    child: Column(
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              SizedBox(width: primaryPadding,),
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset('assets/logo/ic_launcher.jpg', fit: BoxFit.cover),
                              ),
                              SizedBox(width: primaryPadding,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: primaryPadding,),
                                 Text('Tashkent',style: TextStyle(fontSize: 16, color: Color(darkerWhiteColor), fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis, maxLines: 1),
                                 Text('Tashkent',style: TextStyle(fontSize: 14, color: Color(0xFF989EA3), fontWeight: FontWeight.w400), overflow: TextOverflow.ellipsis, maxLines: 2),
                                 SizedBox(height: 8,),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xFF989EA3)
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 4),
                                      child: Text('20',style: TextStyle(fontSize: 12, color: Color(darkerWhiteColor), fontWeight: FontWeight.w300), overflow: TextOverflow.ellipsis, maxLines: 1)),
                                  //Spacer(),
                                ],),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 102),
                          child: Divider(height: 2, color: Color(pantonColor),),
                        ),
                      ],
                    ),
                  ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

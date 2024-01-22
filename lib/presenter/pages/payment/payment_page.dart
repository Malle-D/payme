

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/utils.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(tealColor),
      body: Column(
        children: [
          Column(
            children: [
              Text('Payment', style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 18
              )),
              const SizedBox(height: primaryPadding,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                 decoration: InputDecoration(
                   focusedBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Color(pantonColor), width: 2),
                     borderRadius: BorderRadius.circular(13.0),
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Color(pantonColor), width: 2),
                     borderRadius: BorderRadius.circular(13.0)
                   ),
                   prefixIcon: Padding(
                     padding: const EdgeInsets.only(left: 16.0),
                     child: Image.asset('assets/icons/ic_search_32.png'),
                   ),
                   hintText: 'Search',

                 ),
                ),
              )
            ]
          ),

          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: primaryPadding, bottom: primaryPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Saved payments', style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 16
                          )),
                          Text('More', style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: const Color(tealColor)
                          )),
                        ],
                      ),
                    ),

                    // ListView.builder(
                    //     itemCount: ,
                    //     itemBuilder: itemBuilder,
                    //
                    // )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

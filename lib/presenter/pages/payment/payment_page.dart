

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
                  padding: const EdgeInsets.all(8.0),
                  child: buttonSearchWidget(() { })
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
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/utils.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FinancialServiceModel> elements = [];
    
    elements.add(FinancialServiceModel('Kredit','TBC Bankdan onlayn kredit oling','assets/icons/ic_loan.png'));
    elements.add(FinancialServiceModel('Payme Goals','TBC Bankdan onlayn kredit oling','assets/icons/ic_loan.png'));
    elements.add(FinancialServiceModel('Ma`lumotlar va davlat xizmatlari','TBC Bankdan onlayn kredit oling','assets/icons/ic_loan.png'));
    elements.add(FinancialServiceModel('Kirim-chiqim','TBC Bankdan onlayn kredit oling','assets/icons/ic_loan.png'));
    elements.add(FinancialServiceModel('Eslatmalar','To`lovlar haqida bildirishnoma olish uchun eslatma qo`shing','assets/icons/ic_loan.png'));
    elements.add(FinancialServiceModel('Hisob raqamiga to`lov','TBC Bankdan onlayn kredit oling','assets/icons/ic_loan.png'));
    elements.add(FinancialServiceModel('YHXBB jarimalari haqida xabarnomalar','','assets/icons/ic_loan.png'));
    elements.add(FinancialServiceModel('Payme Avia','TBC Bankdan onlayn kredit oling','assets/icons/ic_loan.png'));

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(primaryColor),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
              child: Text('Services', style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color(darkerWhiteColor)
              )),
            ),

            Flexible(child: ListView.builder(
              itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 8, left: 16, right: 16),
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(lighterDarkColor)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          Image.asset(elements[index].img, height: 64, width: 64,),
                          const SizedBox(width: 8),
                          Flexible(
                            child: SizedBox(
                              // width: 280,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    elements[index].title,
                                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Visibility(
                                    visible: elements[index].description.isNotEmpty,
                                    child: Text(
                                      elements[index].description,
                                      style: TextStyle(color: Colors.white.withAlpha(200), fontSize: 12),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 8,)
                        ],
                      ),
                    ),
                  );
                }))
          ],
        ),
      ),
    );
  }
}

class FinancialServiceModel {
  String title;
  String description;
  String img;
  
  FinancialServiceModel(this.title, this.description, this.img);
}

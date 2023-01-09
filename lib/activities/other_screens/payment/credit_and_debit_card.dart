import 'package:first/activities/other_screens/cart/payment_method.dart';
import 'package:first/activities/other_screens/cart/success_screen.dart';
import 'package:first/activities/other_screens/payment/add_card.dart';
import 'package:first/activities/other_screens/payment/add_payment.dart';
import 'package:first/activities/other_screens/payment/edit_card.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
class CreditAndDebitCard extends StatefulWidget {
  const CreditAndDebitCard({Key? key}) : super(key: key);

  @override
  State<CreditAndDebitCard> createState() => _CreditAndDebitCardState();
}

class _CreditAndDebitCardState extends State<CreditAndDebitCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',color: Color(0xFF9098B1)),
          // onPressed: () => Navigator.of(context).pop(),
          // onPressed: () => Navigator.pop(context),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Credit Card And Debit',
          style: TextStyle(
            color: Color(0xFF223263),
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0.0,bottom: 10.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditCard())));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF54258),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24.0,),
                        Image.asset(
                          'assets/images/mastercard_image.png',
                          height: 18.0,
                        ),
                        const SizedBox(height: 24.0,),
                        const Text(
                          '6326  9124  8124  9875',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 24.0,),
                        Row(
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'CARD HOLDER',
                                  style: TextStyle(
                                    color: Color(0xFFF98E9B),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text(
                                  'Lailyfa Febrina',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 24.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'CARD SAVE',
                                  style: TextStyle(
                                    color: Color(0xFFF98E9B),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text(
                                  '19/2042',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24.0,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditCard())));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFED2A42),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24.0,),
                        Image.asset(
                          'assets/images/mastercard_image.png',
                          height: 18.0,
                        ),
                        const SizedBox(height: 24.0,),
                        const Text(
                          '6326  9124  8124  9875',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 24.0,),
                        Row(
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'CARD HOLDER',
                                  style: TextStyle(
                                    color: Color(0xFFF98E9B),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text(
                                  'Lailyfa Febrina',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 24.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'CARD SAVE',
                                  style: TextStyle(
                                    color: Color(0xFFF98E9B),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text(
                                  '19/2042',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24.0,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const AddCard())));
          },
          child: Container(
            alignment: Alignment.center,
            // width: MediaQuery.of(context).size.width * 100.0,
            //height: MediaQuery.of(context).size.height * 0.06,
            height: 57.0,
            // width: 343.0,
            decoration: BoxDecoration(
              color: const Color(0xFFF54258),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Text(
              'Add Card',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

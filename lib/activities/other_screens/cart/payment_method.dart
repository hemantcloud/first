import 'package:first/activities/other_screens/cart/choose_debit_or_credit_card_static.dart';
import 'package:first/activities/other_screens/cart/ship_to.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',color: Color(0xFF9098B1)),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => const ShipTo()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Payment',
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
              padding: const EdgeInsets.only(top: 0.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            // list start
            InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: ((context) => CreditOrDebitCard())));
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const CreditOrDebitCardStatic())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/other_icons/credit_card.svg',color: Color(0xFFF54258)),
                            SizedBox(width: 20.0,),
                            Text(
                              'Credit Card Or Debit',
                              style: TextStyle(
                                color: Color(0xFF223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/other_icons/paypal.png',
                              width: 24.0,
                              height: 24.0
                            ),
                            const SizedBox(width: 20.0,),
                            const Text(
                              'Paypal',
                              style: TextStyle(
                                color: Color(0xFF223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/other_icons/bank_transfer.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                            SizedBox(width: 20.0,),
                            Text(
                              'Bank Transfer',
                              style: TextStyle(
                                color: Color(0xFF223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // list end
          ],
        ),
      ),
    );
  }
}

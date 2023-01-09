import 'package:first/activities/dashboard.dart';
import 'package:first/activities/other_screens/cart/payment_method.dart';
import 'package:first/activities/other_screens/order/order_details.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
          'Order',
          style: TextStyle(
            color: Color(0xFF223263),
            fontSize: 18.0,
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
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const OrderDetails())));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFEBF0FF),width: 1.0),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'LQNSU346JK',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF223263),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'Order at Lafyuu : August 1, 2017',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0x80223263),
                          ),
                        ),
                        const SizedBox(height: 10.0,),
                        const SvgIcon('assets/images/other_icons/line_cart.svg',color: Color(0xFFEBF0FF),height: 2.0),
                        const SizedBox(height: 10.0,),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Order Status',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0x80223263),
                                  ),
                                ),
                                Text(
                                  'Shipping',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF223263),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Items',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF9098B1),
                                  ),
                                ),
                                Text(
                                  '2 Items purchased',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF223263),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Price',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF223263),
                                  ),
                                ),
                                Text(
                                  '\$299,43',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF333333),
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
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const OrderDetails())));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFEBF0FF),width: 1.0),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'SDG1345KJD',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF223263),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'Order at Lafyuu : August 1, 2017',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0x80223263),
                          ),
                        ),
                        const SizedBox(height: 10.0,),
                        const SvgIcon('assets/images/other_icons/line_cart.svg',color: Color(0xFFEBF0FF),height: 2.0),
                        const SizedBox(height: 10.0,),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Order Status',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0x80223263),
                                  ),
                                ),
                                Text(
                                  'Shipping',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF223263),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Items',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF9098B1),
                                  ),
                                ),
                                Text(
                                  '1 Items purchased',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF223263),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Price',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF223263),
                                  ),
                                ),
                                Text(
                                  '\$299,43',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF333333),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:first/activities/other_screens/cart/ship_to.dart';
import 'package:first/activities/other_screens/order/order.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',color: Color(0xFF9098B1)),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Order Details',
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
              padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // Text(
                //   'Packing',
                //   style: TextStyle(
                //     color: Color(0xFF9098B1),
                //     fontSize: 12.0,
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
                children: [
                  Image.asset('assets/images/other_icons/status_active.png',width: 24.0,height: 24.0,),
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFF54258),
                      height: 2.0,
                    ),
                  ),
                  Image.asset('assets/images/other_icons/status_active.png',width: 24.0,height: 24.0,),
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFF54258),
                      height: 2.0,
                    ),
                  ),
                  Image.asset('assets/images/other_icons/status_active.png',width: 24.0,height: 24.0,),
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFEBF0FF),
                      height: 2.0,
                    ),
                  ),
                  Image.asset('assets/images/other_icons/status_pending.png',width: 24.0,height: 24.0,),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Packing',
                        style: TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'Shipping',
                        style: TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'Arriving',
                        style: TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'Success',
                        style: TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFEBF0FF),width: 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/product_images/product_image4.png',width: 72.0,height: 72.0),
                        ],
                      ),
                      const SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: const Text(
                              'Nike Air Zoom Pegasus 36 Miami',
                              style: TextStyle(
                                color: Color(0xFF223263),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            '\$299,43',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          SvgIcon(
                            'assets/images/other_icons/active_love.svg',
                            color: Color(0xFFFB7181),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFEBF0FF),width: 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/product_images/super_flash_sale1.png',width: 72.0,height: 72.0),
                        ],
                      ),
                      const SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: const Text(
                              'Nike Air Zoom Pegasus 36 Miami',
                              style: TextStyle(
                                color: Color(0xFF223263),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            '\$299,43',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          SvgIcon(
                            'assets/images/other_icons/love.svg',
                            color: Color(0xFF9098B1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Shipping Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF223263),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFEBF0FF),width: 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Date Shipping',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9098B1),
                            ),
                          ),
                          Text(
                            'January 16, 2015',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Shipping',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9098B1),
                            ),
                          ),
                          Text(
                            'POS Reggular',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'No. Resi',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9098B1),
                            ),
                          ),
                          Text(
                            '000192848573',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Date Shipping',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF9098B1),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              '2727 Lakeshore Rd undefined Nampa, Tennessee 78410',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF223263),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Payment Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF223263),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFEBF0FF),width: 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Items (3)',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9098B1),
                            ),
                          ),
                          Text(
                            '\$598.86',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Shipping',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9098B1),
                            ),
                          ),
                          Text(
                            '\$40.00',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Import charges',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9098B1),
                            ),
                          ),
                          Text(
                            '\$128.00',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Total Price',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9098B1),
                            ),
                          ),
                          Text(
                            '\$766.86',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF40BFFF),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: ((context) => Profile())));
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
              'Notify Me',
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

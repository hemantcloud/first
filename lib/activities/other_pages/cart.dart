import 'package:first/activities/other_screens/cart/ship_to.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _count = 1;
  int _count2 = 1;
  void _increaseCount() {
    setState(() {
      _count++;
    });
  }

  void _decreaseCount() {
    setState(() {
      _count--;
    });
  }

  void _increaseCount2() {
    setState(() {
      _count2++;
    });
  }

  void _decreaseCount2() {
    setState(() {
      _count2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Your Cart',
          style: TextStyle(
            fontFamily: "assets/fonts/poppins_black.ttf",
            color: AppColors.secondaryColor,
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
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.borderColor, width: 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                              'assets/images/product_images/product_image4.png',
                              width: 72.0,
                              height: 72.0),
                        ],
                      ),
                      const SizedBox(width: 5.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.40,
                                child: const Text(
                                  'Nike Air Zoom Pegasus 36 Miami',
                                  style: TextStyle(
                                    fontFamily:
                                        "assets/fonts/poppins_black.ttf",
                                    color: AppColors.secondaryColor,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const SvgIcon(
                                'assets/images/other_icons/active_love.svg',
                                color: AppColors.lightPrimaryColor,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const SvgIcon(
                                'assets/images/trash.svg',
                                color: AppColors.greyColor,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.30,
                                child: const Text(
                                  '\$299,43',
                                  style: TextStyle(
                                    fontFamily:
                                        "assets/fonts/poppins_black.ttf",
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                height: 36.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.borderColor2,
                                      width: 1.0),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 4.0),
                                  child: InkWell(
                                    onTap: () => _decreaseCount(),
                                    child: const SvgIcon(
                                      'assets/images/other_icons/decrease.svg',
                                      color: AppColors.greyColor,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 36.0,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  border: Border.symmetric(
                                      horizontal: BorderSide(
                                          width: 1.0,
                                          color: AppColors.borderColor2)),
                                  color: AppColors.borderColor,
                                ),
                                // color: AppColors.borderColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 4.0),
                                  child: Text(
                                    '${_count}',
                                    style: const TextStyle(
                                      fontFamily:
                                          "assets/fonts/poppins_black.ttf",
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 36.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.borderColor2,
                                      width: 1.0),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 4.0),
                                  child: InkWell(
                                    onTap: () => _increaseCount(),
                                    child: const SvgIcon(
                                      'assets/images/other_icons/increase.svg',
                                      color: AppColors.greyColor,
                                    ),
                                  ),
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
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.borderColor, width: 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                              'assets/images/product_images/product_image4.png',
                              width: 72.0,
                              height: 72.0),
                        ],
                      ),
                      const SizedBox(width: 5.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.40,
                                child: const Text(
                                  'Nike Air Zoom Pegasus 36 Miami',
                                  style: TextStyle(
                                    fontFamily:
                                        "assets/fonts/poppins_black.ttf",
                                    color: AppColors.secondaryColor,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const SvgIcon(
                                'assets/images/other_icons/love.svg',
                                color: AppColors.greyColor,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const SvgIcon(
                                'assets/images/trash.svg',
                                color: AppColors.greyColor,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.30,
                                child: const Text(
                                  '\$299,43',
                                  style: TextStyle(
                                    fontFamily:
                                        "assets/fonts/poppins_black.ttf",
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                height: 36.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.borderColor2,
                                      width: 1.0),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 4.0),
                                  child: InkWell(
                                    onTap: () => _decreaseCount2(),
                                    child: const SvgIcon(
                                      'assets/images/other_icons/decrease.svg',
                                      color: AppColors.greyColor,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 36.0,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  border: Border.symmetric(
                                      horizontal: BorderSide(
                                          width: 1.0,
                                          color: AppColors.borderColor2)),
                                  color: AppColors.borderColor,
                                ),
                                // color: AppColors.borderColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 4.0),
                                  child: Text(
                                    '${_count2}',
                                    style: const TextStyle(
                                      fontFamily:
                                          "assets/fonts/poppins_black.ttf",
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 36.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.borderColor2,
                                      width: 1.0),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 4.0),
                                  child: InkWell(
                                    onTap: () => _increaseCount2(),
                                    child: const SvgIcon(
                                      'assets/images/other_icons/increase.svg',
                                      color: AppColors.greyColor,
                                    ),
                                  ),
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
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: TextFormField(
                      cursorColor: AppColors.greyColor,
                      // showCursor: true,
                      style: const TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.greyColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Enter Cupon Code',
                        hintStyle: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1.0,
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1.0,
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        // width: MediaQuery.of(context).size.width * 100.0,
                        //height: MediaQuery.of(context).size.height * 0.06,
                        height: 53.0,
                        // width: 343.0,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: const Text(
                          'Apply',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.borderColor, width: 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Items (3)',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                            ),
                          ),
                          Text(
                            '\$598.86',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Shipping',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                            ),
                          ),
                          Text(
                            '\$40.00',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Import charges',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                            ),
                          ),
                          Text(
                            '\$128.00',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const SvgIcon('assets/images/other_icons/line_cart.svg',
                          color: AppColors.borderColor, height: 2.0),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Total Price',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          Text(
                            '\$766.86',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const ShipTo())));
          },
          child: Container(
            alignment: Alignment.center,
            // width: MediaQuery.of(context).size.width * 100.0,
            //height: MediaQuery.of(context).size.height * 0.06,
            height: 57.0,
            // width: 343.0,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Text(
              'Check Out',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "assets/fonts/poppins_black.ttf",
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

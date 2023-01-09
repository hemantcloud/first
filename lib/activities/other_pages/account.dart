import 'package:first/activities/other_screens/account/profile.dart';
import 'package:first/activities/other_screens/address/address.dart';
import 'package:first/activities/other_screens/order/order.dart';
import 'package:first/activities/other_screens/payment/add_payment.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: const Text(
      //     'Account',
      //     style: TextStyle(
      // fontFamily: "assets/fonts/poppins_black.ttf",
      //       color: AppColors.secondaryColor,
      //       fontSize: 14.0,
      //       fontWeight: FontWeight.w700,
      //     ),
      //   ),
      //   elevation: 0.0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 50.0, bottom: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Account',
                  style: TextStyle(
                    fontFamily: "assets/fonts/poppins_black.ttf",
                    color: AppColors.secondaryColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
            // list start
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Profile())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/authenticate_icons/user.svg',
                                color: AppColors.primaryColor),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Order())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/other_icons/bag.svg',
                                color: AppColors.primaryColor),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Order',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Address())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/other_icons/location.svg',
                                color: AppColors.primaryColor),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Address',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const AddPayment())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/other_icons/credit_card.svg',
                                color: AppColors.primaryColor),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Payment',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
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

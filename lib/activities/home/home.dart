import 'package:first/activities/dashboard.dart';
import 'package:first/activities/home/categories_list.dart';
import 'package:first/activities/home/flash_sale.dart';
import 'package:first/activities/home/mega_sale.dart';
import 'package:first/activities/home/other_products.dart';
import 'package:first/activities/other_screens/favorite_product.dart';
import 'package:first/activities/other_screens/list_category.dart';
import 'package:first/activities/other_screens/notification_screens/notification.dart';
import 'package:first/activities/other_screens/super_flash_sale.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:first/activities/CarouselWithDotsPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imgList = [
    'assets/images/dashboard_banner1.png',
    'assets/images/dashboard_banner2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 50.0, bottom: 10.0, left: 16.0, right: 20.0),
            child: Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    height: 46.0,
                    child: SizedBox(
                      height: 140.0,
                      child: TextFormField(
                        style: const TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 13.0,
                        ),
                        cursorColor: AppColors.greyColor,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0.0),
                          hintText: 'Search Result',
                          hintStyle: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: AppColors.greyColor,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                          // icon for outside the input field
                          // icon: Icon(Icons.people),
                          // prefix for inside the input field
                          // prefixIcon: Icon(Icons.person_outline,color: AppColors.primaryColor),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgIcon(
                                'assets/images/navigationbar/search.svg',
                                color: AppColors.primaryColor),
                          ),
                          floatingLabelStyle: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: AppColors.greyColor,
                            fontSize: 16.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.0,
                              color: AppColors.borderColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.0,
                              color: AppColors.focusBlueBorderColor,
                            ),
                          ),
                          // border: OutlineInputBorder(
                          //   borderSide: BorderSide(
                          //       color: AppColors.borderColor
                          //   ),
                          // ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: AppColors.borderColor,
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const FavoriteProduct())));
                    },
                    child: const SvgIcon(
                      'assets/images/other_icons/love.svg',
                      color: AppColors.greyColor,
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const NotificationScreen())));
                    },
                    child: const SvgIcon(
                      'assets/images/other_icons/notification.svg',
                      color: AppColors.greyColor,
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(height: 20.0),
          // CarouselSlider(
          //   items: imgList
          //       .map((item) => Container(
          //     child: Center(
          //       child: Image.network(
          //         item,
          //         fit: BoxFit.cover,
          //         width: 1000,
          //       ),
          //     ),
          //   )).toList(),
          //   options: CarouselOptions(
          //     autoPlay: true,
          //     aspectRatio: 2.0,
          //     enlargeCenterPage: true,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ),
          CarouselWithDotsPage(imgList: imgList),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, right: 16.0, bottom: 20.0, left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Category',
                      // style: GoogleFonts.roboto(),
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const ListCategory())));
                  },
                  child: Column(
                    children: const [
                      Text(
                        'More Category',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.primaryColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Categories(),
          Padding(
            padding:
                const EdgeInsets.only(right: 16.0, bottom: 20.0, left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SuperFlashSale())));
                  },
                  child: Column(
                    children: const [
                      Text(
                        'See More',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.primaryColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const FlashSale(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Mega Sale',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'See More',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.primaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const MegaSale(),
          // Recomended Product banner
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            child: Stack(
              children: <Widget>[
                Image.asset('assets/images/recomended_product_banner.png'),
                // Center(child: Text("someText")),
              ],
            ),
          ),
          // Recomended Product banner
          const OtherProducts(),
          const SizedBox(height: 20.0),
          const OtherProducts(),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

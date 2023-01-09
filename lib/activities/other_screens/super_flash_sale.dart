import 'package:first/activities/dashboard.dart';
import 'package:first/activities/other_screens/super_flash_sale_banner_with_counter.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class SuperFlashSale extends StatefulWidget {
  const SuperFlashSale({Key? key}) : super(key: key);

  @override
  State<SuperFlashSale> createState() => _SuperFlashSaleState();
}

class _SuperFlashSaleState extends State<SuperFlashSale> {
  final List<String> imgList = [
    'assets/images/dashboard_banner1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',
              color: AppColors.greyColor),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const Dashboard()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Super Flash Sale',
          style: TextStyle(
            fontFamily: "assets/fonts/poppins_black.ttf",
            color: AppColors.secondaryColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SvgIcon('assets/images/navigationbar/search.svg',
                color: AppColors.greyColor),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 10.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 10.0,bottom: 15.0,left: 20.0,right: 20.0),
            //   child: Image.asset('assets/images/offer_banner.jpg'),
            // ),
            SuperFlashSaleCarouselWithDotsPage(imgList: imgList),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 282.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16.0, bottom: 16.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/product_images/super_flash_sale1.png',
                                  width: 133.0,
                                  height: 133.0,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.0, bottom: 8.0),
                                  child: Text(
                                    'Nike Air Max 270 React ENG',
                                    // style: GoogleFonts.roboto(),
                                    style: TextStyle(
                                      fontFamily:
                                          "assets/fonts/poppins_black.ttf",
                                      color: AppColors.secondaryColor,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    'assets/images/stars.png',
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "\$299,43",
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.blackColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '\$534,33',
                                            style: TextStyle(
                                              fontFamily:
                                                  "assets/fonts/poppins_black.ttf",
                                              color: AppColors.greyColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '24% Off',
                                            style: TextStyle(
                                              fontFamily:
                                                  "assets/fonts/poppins_black.ttf",
                                              color:
                                                  AppColors.lightPrimaryColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 282.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16.0, bottom: 16.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/product_images/super_flash_sale2.png',
                                  width: 133.0,
                                  height: 133.0,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.0, bottom: 8.0),
                                  child: Text(
                                    'Nike Air Max 270 React ENG',
                                    // style: GoogleFonts.roboto(),
                                    style: TextStyle(
                                      fontFamily:
                                          "assets/fonts/poppins_black.ttf",
                                      color: AppColors.secondaryColor,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    'assets/images/stars.png',
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "\$299,43",
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.blackColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '\$534,33',
                                            style: TextStyle(
                                              fontFamily:
                                                  "assets/fonts/poppins_black.ttf",
                                              color: AppColors.greyColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '24% Off',
                                            style: TextStyle(
                                              fontFamily:
                                                  "assets/fonts/poppins_black.ttf",
                                              color:
                                                  AppColors.lightPrimaryColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 282.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16.0, bottom: 16.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/product_images/super_flash_sale3.png',
                                  width: 133.0,
                                  height: 133.0,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.0, bottom: 8.0),
                                  child: Text(
                                    'Nike Air Max 270 React ENG',
                                    // style: GoogleFonts.roboto(),
                                    style: TextStyle(
                                      fontFamily:
                                          "assets/fonts/poppins_black.ttf",
                                      color: AppColors.secondaryColor,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    'assets/images/stars.png',
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "\$299,43",
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.blackColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '\$534,33',
                                            style: TextStyle(
                                              fontFamily:
                                                  "assets/fonts/poppins_black.ttf",
                                              color: AppColors.greyColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '24% Off',
                                            style: TextStyle(
                                              fontFamily:
                                                  "assets/fonts/poppins_black.ttf",
                                              color:
                                                  AppColors.lightPrimaryColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 282.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.borderColor2,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16.0, bottom: 16.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/product_images/super_flash_sale4.png',
                                  width: 133.0,
                                  height: 133.0,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.0, bottom: 8.0),
                                  child: Text(
                                    'Nike Air Max 270 React ENG',
                                    // style: GoogleFonts.roboto(),
                                    style: TextStyle(
                                      fontFamily:
                                          "assets/fonts/poppins_black.ttf",
                                      color: AppColors.secondaryColor,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    'assets/images/stars.png',
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "\$299,43",
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.blackColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '\$534,33',
                                            style: TextStyle(
                                              fontFamily:
                                                  "assets/fonts/poppins_black.ttf",
                                              color: AppColors.greyColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '24% Off',
                                            style: TextStyle(
                                              fontFamily:
                                                  "assets/fonts/poppins_black.ttf",
                                              color:
                                                  AppColors.lightPrimaryColor,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

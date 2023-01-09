import 'package:first/activities/CarouselWithDotsPage.dart';
import 'package:first/activities/dashboard.dart';
import 'package:first/activities/home/other_products.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class FavoriteProduct extends StatefulWidget {
  const FavoriteProduct({Key? key}) : super(key: key);

  @override
  State<FavoriteProduct> createState() => _FavoriteProductState();
}

class _FavoriteProductState extends State<FavoriteProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',
              color: AppColors.greyColor),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: ((context) => const Dashboard()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Favorite Product',
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
              padding: const EdgeInsets.only(bottom: 10.0),
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
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                      height: 282.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                fontSize: 12.0,
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
                                        color: AppColors.lightPrimaryColor,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const SvgIcon('assets/images/trash.svg',
                                    color: AppColors.greyColor,
                                    height: 20.0,
                                    width: 20.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0,),
                  Expanded(
                    child: Container(
                      height: 282.0,
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                fontSize: 12.0,
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
                                        color: AppColors.lightPrimaryColor,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const SvgIcon('assets/images/trash.svg',
                                    color: AppColors.greyColor,
                                    height: 20.0,
                                    width: 20.0),
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
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                      height: 282.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                fontSize: 12.0,
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
                                        color: AppColors.lightPrimaryColor,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const SvgIcon('assets/images/trash.svg',
                                    color: AppColors.greyColor,
                                    height: 20.0,
                                    width: 20.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0,),
                  Expanded(
                    child: Container(
                      height: 282.0,
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                fontSize: 12.0,
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
                                        color: AppColors.lightPrimaryColor,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const SvgIcon('assets/images/trash.svg',
                                    color: AppColors.greyColor,
                                    height: 20.0,
                                    width: 20.0),
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
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

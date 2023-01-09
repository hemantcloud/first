import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';

class OtherProducts extends StatelessWidget {
  const OtherProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, bottom: 16.0),
              height: 282.0,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor2, width: 1.0),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/product_images/product_image4.png',
                    width: 133.0,
                    height: 133.0,
                  ),
                  const Text(
                    'Nike Air Max 270 React ENG',
                    // style: GoogleFonts.roboto(),
                    style: TextStyle(
                      fontFamily: "assets/fonts/poppins_black.ttf",
                      color: AppColors.secondaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/images/stars.png',
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "\$299,43",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.blackColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              decoration: TextDecoration.lineThrough,
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
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20.0,),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, bottom: 16.0),
              height: 282.0,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor2, width: 1.0),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/product_images/product_image4.png',
                    width: 133.0,
                    height: 133.0,
                  ),
                  const Text(
                    'Nike Air Max 270 React ENG',
                    // style: GoogleFonts.roboto(),
                    style: TextStyle(
                      fontFamily: "assets/fonts/poppins_black.ttf",
                      color: AppColors.secondaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/images/stars.png',
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "\$299,43",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.blackColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              decoration: TextDecoration.lineThrough,
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

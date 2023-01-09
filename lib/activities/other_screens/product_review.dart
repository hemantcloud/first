import 'package:first/activities/other_screens/payment/credit_and_debit_card.dart';
import 'package:first/activities/other_screens/product_detail.dart';
import 'package:first/activities/other_screens/write_review.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class ProductReview extends StatefulWidget {
  const ProductReview({Key? key}) : super(key: key);

  @override
  State<ProductReview> createState() => _ProductReviewState();
}

class _ProductReviewState extends State<ProductReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',
              color: AppColors.greyColor),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const ProductDetail()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          '5 Review',
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
        child: Padding(
          padding: const EdgeInsets.only(top: 00.0, bottom: 20.0),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: AppColors.lightPrimaryColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'All Review',
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
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.borderColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              children: const [
                                SvgIcon(
                                  'assets/images/single_star.svg',
                                  height: 16.0,
                                  color: AppColors.yellowColor,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily:
                                        "assets/fonts/poppins_black.ttf",
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.borderColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              children: const [
                                SvgIcon(
                                  'assets/images/single_star.svg',
                                  height: 16.0,
                                  color: AppColors.yellowColor,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily:
                                        "assets/fonts/poppins_black.ttf",
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.borderColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              children: const [
                                SvgIcon(
                                  'assets/images/single_star.svg',
                                  height: 16.0,
                                  color: AppColors.yellowColor,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontFamily:
                                        "assets/fonts/poppins_black.ttf",
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/review_profile_image.png',
                                height: 48.0,
                                width: 48.0,
                            ),
                          ],
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'James Lawson',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Image.asset(
                              'assets/images/product_detail_four_star.png',
                              height: 16.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.greyColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/product_images/product_review_image1.png',
                                height: 72.0,
                                width: 72.0),
                          ],
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/product_images/product_review_image2.png',
                                height: 72.0,
                                width: 72.0),
                          ],
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/product_images/product_review_image3.png',
                                height: 72.0,
                                width: 72.0),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'December 10, 2016',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/review_profile_image2.png',
                                height: 48.0,
                                width: 48.0),
                          ],
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Laura Octavian',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Image.asset(
                              'assets/images/product_detail_four_star.png',
                              height: 16.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "This is really amazing product, i like the design of product, I hope can buy it again!",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.greyColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'December 10, 2016',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/review_profile_image3.png',
                                height: 48.0,
                                width: 48.0),
                          ],
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Laura Octavian',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Image.asset(
                              'assets/images/product_detail_four_star.png',
                              height: 16.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.greyColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'December 10, 2016',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/review_profile_image4.png',
                                height: 48.0,
                                width: 48.0),
                          ],
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Griffin Rod',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Image.asset(
                              'assets/images/product_detail_four_star.png',
                              height: 16.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small  ",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.greyColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/product_images/product_review_image1.png',
                                height: 72.0,
                                width: 72.0),
                          ],
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/product_images/product_review_image2.png',
                                height: 72.0,
                                width: 72.0),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const WriteReview())));
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
              'Write Review',
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

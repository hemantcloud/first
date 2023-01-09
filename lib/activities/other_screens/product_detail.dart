import 'package:first/activities/dashboard.dart';
import 'package:first/activities/home/flash_sale.dart';
import 'package:first/activities/home/other_products.dart';
import 'package:first/activities/other_screens/product_review.dart';
import 'package:first/activities/other_screens/product_detail_slider.dart';
import 'package:first/activities/other_screens/search_result.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isFavorited = false;
  void _toggleFavorite(){
    setState(() {
      if(isFavorited){
        isFavorited = false;
      }else{
        isFavorited = true;
      }
    });
  }
  final List<String> imgList = [
    'assets/images/product_images/product_image12.png',
    'assets/images/product_images/product_image11.png',
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
        elevation: 0.0,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const SearchResult())));
            },
            child: const SvgIcon('assets/images/navigationbar/search.svg',
                color: AppColors.greyColor),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0, left: 5.0),
            child:
                SvgIcon('assets/images/more.svg', color: AppColors.greyColor),
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
            ProductDetailSlider(imgList: imgList),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 16.0, bottom: 20.0, left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.70,
                        child: const Text(
                          'Nike Air Zoom Pegasus 36 Miami',
                          // style: GoogleFonts.roboto(),
                          style: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: AppColors.secondaryColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: InkWell(
                          onTap: _toggleFavorite,
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: isFavorited == false ?
                          const SvgIcon(
                            'assets/images/other_icons/love.svg',
                            color: AppColors.greyColor,
                          ) :
                          const SvgIcon(
                            'assets/images/other_icons/active_love.svg',
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 16.0, bottom: 20.0, left: 16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/images/product_detail_four_star.png',
                      height: 16.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "\$299,43",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.blackColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select Size",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    height: 49.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '6',
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '6.5',
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '7',
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '7.5',
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '8',
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '8.5',
                                      style: TextStyle(
                                        fontFamily:
                                            "assets/fonts/poppins_black.ttf",
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select Color",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    height: 49.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFFFFC833),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: AppColors.focusBlueBorderColor,
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFFFB7181),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFF53D1B6),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Color(0xFF5C61F4),
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Colors start
                            Column(
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: AppColors.secondaryColor,
                                  ),
                                ),
                              ],
                            ),
                            // Colors end
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Specification",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Shown:',
                              // style: GoogleFonts.roboto(),
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Laser',
                                        style: TextStyle(
                                          fontFamily:
                                              "assets/fonts/poppins_black.ttf",
                                          color: AppColors.greyColor,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'Blue/Anthracite/Watermel',
                                        style: TextStyle(
                                          fontFamily:
                                              "assets/fonts/poppins_black.ttf",
                                          color: AppColors.greyColor,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'on/White',
                                        style: TextStyle(
                                          fontFamily:
                                              "assets/fonts/poppins_black.ttf",
                                          color: AppColors.greyColor,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Style:',
                              // style: GoogleFonts.roboto(),
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              'CD0113-400',
                              // style: GoogleFonts.roboto(),
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.greyColor,
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
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.greyColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Review Product',
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
                                    builder: ((context) =>
                                        const ProductReview())));
                          },
                          highlightColor: Colors.transparent,
                          child: Column(
                            children: const [
                              Text(
                                'See More',
                                style: TextStyle(
                                  fontFamily: "assets/fonts/poppins_black.ttf",
                                  color: AppColors.focusBlueBorderColor,
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/product_detail_four_star.png',
                          height: 16.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text(
                          '4.5 ',
                          style: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            fontWeight: FontWeight.w700,
                            fontSize: 10.0,
                            color: AppColors.greyColor,
                          ),
                        ),
                        const Text(
                          '(5 Review)',
                          style: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            fontWeight: FontWeight.w400,
                            fontSize: 10.0,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/review_profile_image.png',
                              height: 48.0, width: 48.0),
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
                  const SizedBox(height: 20.0),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.greyColor,
                        fontSize: 12.0,
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
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You might also like",
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const FlashSale(),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: ((context) => WriteReview())));
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
              'Add To Cart',
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

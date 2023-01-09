import 'package:first/activities/other_screens/offer_carousel.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';

class Offer extends StatefulWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  final List<String> imgList = [
    'assets/images/dashboard_banner1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 50.0,
                left: 16.0,
                right: 16.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Offer',
                  style: TextStyle(
                    fontFamily: "assets/fonts/poppins_black.ttf",
                    color: AppColors.secondaryColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
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
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Use “MEGSL” Cupon For Get 90%off',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  OfferCarousel(imgList: imgList),
                  const SizedBox(height: 10.0,),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 206.0,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/dashboard_banner2.png'),
                            fit: BoxFit.cover,
                        ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                          'Recomended\nProduct',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          Text(
                            'We recommend the best for you',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  // Image.asset('assets/images/recomended_product_banner.png'),
                  // const SizedBox(height: 10.0,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

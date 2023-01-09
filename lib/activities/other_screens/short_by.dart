import 'package:first/activities/other_screens/search_result.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class ShortBy extends StatefulWidget {
  const ShortBy({Key? key}) : super(key: key);

  @override
  State<ShortBy> createState() => _ShortByState();
}

class _ShortByState extends State<ShortBy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',
              color: AppColors.greyColor),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: ((context) => SearchResult()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Short By',
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
              padding: const EdgeInsets.only(top: 0.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            // list start
            InkWell(
              onTap: () {},
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
                            Text(
                              'Best Match',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.primaryColor,
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
              onTap: () {},
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
                            Text(
                              'Time: ending soonest',
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
              onTap: () {},
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
                            Text(
                              'Time: newly listed',
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
              onTap: () {},
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
                            Text(
                              'Price + Shipping: lowest first',
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
              onTap: () {},
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
                            Text(
                              'Price + Shipping: highest first',
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
              onTap: () {},
              splashColor: AppColors.borderColor,
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
                            Text(
                              'Distance: nearest first',
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

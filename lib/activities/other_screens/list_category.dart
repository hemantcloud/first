import 'package:first/activities/dashboard.dart';
import 'package:first/activities/other_screens/notification_screens/notification.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({Key? key}) : super(key: key);

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
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
          'Category',
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
                            SvgIcon(
                                'assets/images/category_icons/man_shirt.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Offer',
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
                            SvgIcon('assets/images/category_icons/bikini.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Bikini',
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
                            SvgIcon('assets/images/category_icons/dress.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Dress',
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
                            SvgIcon(
                                'assets/images/category_icons/man_work_equipment.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Work Equipment',
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
                            SvgIcon(
                                'assets/images/category_icons/man_pants.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Man Pants',
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
                            SvgIcon(
                                'assets/images/category_icons/man_shoes.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Man Shoes',
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
                            SvgIcon(
                                'assets/images/category_icons/man_underwear.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Man Underwear',
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
                            SvgIcon(
                                'assets/images/category_icons/man_tshirt.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Man T-Shirt',
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
                            SvgIcon(
                                'assets/images/category_icons/woman_bag.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Woman Bag',
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
                            SvgIcon(
                                'assets/images/category_icons/woman_pants.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Woman Pants',
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
                            SvgIcon(
                                'assets/images/category_icons/high_heels.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'High Heels',
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
                            SvgIcon(
                                'assets/images/category_icons/woman_tshirt.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Woman T-Shirt',
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
                            SvgIcon('assets/images/category_icons/skirt.svg',
                                color: AppColors.primaryColor,
                                width: 24.0,
                                height: 24.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Skirt',
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

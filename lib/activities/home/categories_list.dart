import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: [
                // Man Shirt start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/man_shirt.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Man Shirt',
                        textAlign: TextAlign.center,
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
                // Man Shirt end
                // Dress start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/dress.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Dress',
                        textAlign: TextAlign.center,
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
                // Dress end
                // Man Work Equipment start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/man_work_equipment.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Man Work\nEquipment',
                        // 'Man ',
                        textAlign: TextAlign.center,
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
                // Man Work Equipment end
                // Woman Bag start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/woman_bag.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Woman Bag',
                        // 'Man ',
                        textAlign: TextAlign.center,
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
                // Woman Bag end
                // Man T-Shirt start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/man_tshirt.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Man T-Shirt',
                        textAlign: TextAlign.center,
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
                // Man T-Shirt end
                // Man Shoes start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/man_shoes.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Man Shoes',
                        textAlign: TextAlign.center,
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
                // Dress end
                // Man Pants start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/man_pants.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Man Pants',
                        // 'Man ',
                        textAlign: TextAlign.center,
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
                // Man Pants end
                // Man Underwear start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/man_underwear.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Man\nUnderwear',
                        // 'Man ',
                        textAlign: TextAlign.center,
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
                // Man Underwear end
                // Woman T-Shirt start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/woman_tshirt.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Woman\nT-Shirt',
                        // 'Man ',
                        textAlign: TextAlign.center,
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
                // Woman T-Shirt end
                // Woman Pants start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/woman_pants.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Woman\nPants',
                        textAlign: TextAlign.center,
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
                // Woman Pants end
                // Skirt start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/skirt.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Skirt',
                        textAlign: TextAlign.center,
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
                // Skirt end
                // High Heels start
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SvgIcon(
                              'assets/images/category_icons/high_heels.svg',
                              color: AppColors.primaryColor),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'High Heels',
                        // 'Man ',
                        textAlign: TextAlign.center,
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
                // High Heels end
                // Bikini start
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.borderColor,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: SvgIcon(
                            'assets/images/category_icons/bikini.svg',
                            color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Bikini',
                      // 'Man ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
                // Bikini end
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:first/activities/other_screens/favorite_product.dart';
import 'package:first/activities/other_screens/notification_screens/notification.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 10.0,left: 16.0,right: 16.0),
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
                            child: SvgIcon('assets/images/navigationbar/search.svg',color: AppColors.primaryColor),
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const FavoriteProduct())));
                    },
                    child: const SvgIcon('assets/images/other_icons/love.svg',color: AppColors.greyColor,width: 24.0,height: 24.0,),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const NotificationScreen())));
                    },
                    child: const SvgIcon('assets/images/other_icons/notification.svg',color: AppColors.greyColor,width: 24.0,height: 24.0,),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0,right: 16.0,bottom: 10.0,left: 16.0,),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Man Fashion',
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
            padding: const EdgeInsets.only(top: 10.0,right: 16.0,bottom: 10.0,left: 16.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        child: SvgIcon('assets/images/category_icons/man_shirt.svg',color: AppColors.primaryColor),
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
                        child: SvgIcon('assets/images/category_icons/man_work_equipment.svg',color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Man Work\nEquipment',
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
                        child: SvgIcon('assets/images/category_icons/man_tshirt.svg',color: AppColors.primaryColor),
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
                        child: SvgIcon('assets/images/category_icons/man_shoes.svg',color: AppColors.primaryColor),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,right: 16.0,bottom: 10.0,left: 16.0,),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        child: SvgIcon('assets/images/category_icons/man_pants.svg',color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Man Pants',
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
                const SizedBox(width: 15.0,),
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
                        child: SvgIcon('assets/images/category_icons/man_underwear.svg',color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Man\nUnderwear',
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
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0,right: 16.0,bottom: 10.0,left: 16.0,),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Women Fashion',
                // style: GoogleFonts.popp,
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
            padding: const EdgeInsets.only(top: 10.0,right: 16.0,bottom: 10.0,left: 16.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        child: SvgIcon('assets/images/category_icons/dress.svg',color: AppColors.primaryColor),
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
                        child: SvgIcon('assets/images/category_icons/woman_tshirt.svg',color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Woman\nT-Shirt',
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
                        child: SvgIcon('assets/images/category_icons/woman_pants.svg',color: AppColors.primaryColor),
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
                        child: SvgIcon('assets/images/category_icons/skirt.svg',color: AppColors.primaryColor),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,right: 16.0,bottom: 10.0,left: 16.0,),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        child: SvgIcon('assets/images/category_icons/woman_bag.svg',color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Woman Bag',
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
                const SizedBox(width: 15.0,),
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
                        child: SvgIcon('assets/images/category_icons/high_heels.svg',color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'High Heels',
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
                const SizedBox(width: 15.0,),
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
                        child: SvgIcon('assets/images/category_icons/bikini.svg',color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Bikini',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

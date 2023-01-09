import 'package:first/activities/dashboard.dart';
import 'package:first/activities/other_pages/account.dart';
import 'package:first/activities/other_screens/account/birthday.dart';
import 'package:first/activities/other_screens/account/change_name.dart';
import 'package:first/activities/other_screens/account/change_password.dart';
import 'package:first/activities/other_screens/account/email.dart';
import 'package:first/activities/other_screens/account/gender.dart';
import 'package:first/activities/other_screens/account/phone_number.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',
              color: AppColors.greyColor),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Profile',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const <Widget>[
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ChangeName())));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 10.0,
                  bottom: 16.0,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0)),
                          child: Image.asset(
                            'assets/images/review_profile_image.png',
                            width: 72.0,
                            height: 72.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Maximus Gold',
                          style: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: AppColors.secondaryColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '@derlaxy',
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
            ),
            // list start
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Gender())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon(
                              'assets/images/other_icons/gender.svg',
                              color: AppColors.primaryColor,
                              width: 24.0,
                              height: 24.0,
                            ),
                            SizedBox(
                              width: 24.0,
                            ),
                            Text(
                              'Gender',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Male',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.greyColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            SvgIcon('assets/images/other_icons/right.svg',
                                color: AppColors.greyColor,
                                width: 24.0,
                                height: 24.0),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Birthday())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/other_icons/birthday.svg',
                                color: AppColors.primaryColor,
                                width: 20.0,
                                height: 20.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Birthday',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              '12-12-2000',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.greyColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            SvgIcon('assets/images/other_icons/right.svg',
                                color: AppColors.greyColor,
                                width: 24.0,
                                height: 24.0),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Email())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon(
                                'assets/images/authenticate_icons/message.svg',
                                color: AppColors.primaryColor,
                                width: 20.0,
                                height: 20.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Email',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Derlaxy@yahoo.com',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.greyColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            SvgIcon('assets/images/other_icons/right.svg',
                                color: AppColors.greyColor,
                                width: 24.0,
                                height: 24.0),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const PhoneNumber())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/other_icons/phone.svg',
                                color: AppColors.primaryColor,
                                width: 20.0,
                                height: 20.0),
                            SizedBox(
                              width: 26.0,
                            ),
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              '(307) 555-0133',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.greyColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            SvgIcon(
                              'assets/images/other_icons/right.svg',
                              color: AppColors.greyColor,
                              width: 24.0,
                              height: 24.0,
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ChangePassword())));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon(
                                'assets/images/authenticate_icons/password.svg',
                                color: AppColors.primaryColor,
                                width: 20.0,
                                height: 20.0),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Change Password',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.secondaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              '•••••••••••••••••',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.greyColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            SvgIcon(
                              'assets/images/other_icons/right.svg',
                              color: AppColors.greyColor,
                              width: 24.0,
                              height: 24.0,
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

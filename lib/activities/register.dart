import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';

import 'login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
                bottom: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/main_logo.png',width: 72.0,height: 72.0),
                      const SizedBox(height: 15.0,),
                      const Text(
                        'Let’s Get Started',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.secondaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          // fontFamily: GoogleFonts.poppins(),
                        ),
                      ),
                      const SizedBox(height: 15.0,),
                      const Text(
                        'Create an new account',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          fontSize: 12.0,
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          // height: 2.16,
                          // fontFamily: GoogleFonts.('Poppins'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 25.0,right: 25.0),
              child: Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: 48.0,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                        style: const TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 13.0,
                        ),
                        cursorColor: AppColors.greyColor,
                        decoration: const InputDecoration(
                          hintText: 'Full Name',
                          hintStyle: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: AppColors.greyColor,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgIcon('assets/images/authenticate_icons/user.svg',color: AppColors.primaryColor),
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
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: 48.0,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                        style: const TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 13.0,
                        ),
                        cursorColor: AppColors.greyColor,
                        decoration: const InputDecoration(
                          hintText: 'Your Email',
                          hintStyle: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: AppColors.greyColor,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgIcon('assets/images/authenticate_icons/message.svg',color: AppColors.primaryColor),
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
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: 48.0,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                        style: const TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 13.0,
                        ),
                        cursorColor: AppColors.greyColor,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgIcon('assets/images/authenticate_icons/password.svg',color: AppColors.primaryColor),
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
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: 48.0,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                        style: const TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 13.0,
                        ),
                        cursorColor: AppColors.greyColor,
                        decoration: const InputDecoration(
                          hintText: 'Password Again',
                          hintStyle: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: AppColors.greyColor,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgIcon('assets/images/authenticate_icons/password.svg',color: AppColors.primaryColor),
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
                    const SizedBox(height: 15.0),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          // width: MediaQuery.of(context).size.width * 100.0,
                          //height: MediaQuery.of(context).size.height * 0.06,
                          height: 57.0,
                          // width: 343.0,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: const Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Have a acount?',
                              style: TextStyle(
                                fontFamily: "assets/fonts/poppins_black.ttf",
                                color: AppColors.greyColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                // fontFamily: GoogleFonts.poppins(),
                              ),
                            ),
                            SizedBox(height: 15.0,),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => const Login())));
                              },
                              hoverColor: Colors.white,
                              splashColor: Colors.white,
                              focusColor: Colors.white,
                              highlightColor: Colors.transparent,
                              child: const Text(
                                ' Sign In',
                                style: TextStyle(
                                  fontFamily: "assets/fonts/poppins_black.ttf",
                                  color: AppColors.lightPrimaryColor,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  // fontFamily: GoogleFonts.poppins(),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15.0,),
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
      ),
    );
  }
}

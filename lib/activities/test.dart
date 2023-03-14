import 'package:first/activities/register.dart';
import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'dart:ui';
import 'package:svg_icon/svg_icon.dart';
import 'dashboard.dart';
import 'package:first/app_colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHidden = true;
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
                        'Welcome to ....',
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
                        'Sign in to continue',
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
                          hintText: 'Your Email',
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
                        obscureText: _isHidden,
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
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => const Dashboard())));
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
                              'Sign In',
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
                    // Row(
                    //     children: const <Widget>[
                    //       Expanded(
                    //         child: Divider(),
                    //       ),
                    //       Text('OR',style: TextStyle(color: AppColors.greyColor,fontWeight: FontWeight.w700,fontSize: 12.0)),
                    //       Expanded(
                    //           child: Divider(),
                    //       ),
                    //     ]
                    // ),
                    Image.asset('assets/images/authenticate_icons/or_line.png'),
                    const SizedBox(height: 20.0),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 57.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderColor,width: 1.0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Image.asset('assets/images/Google.png',height: 24.0,width: 24.0,),
                            ),
                            // const SizedBox(width: 20.0),
                            Flexible(
                              flex: 1,
                              // fit: FlexFit.loose,
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  'Login with Google',
                                  style: TextStyle(
                                    fontFamily: "assets/fonts/poppins_black.ttf",
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => Test())));
                      },
                      child: Container(
                        height: 57.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderColor,width: 1.0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: SvgIcon('assets/images/authenticate_icons/facebook.svg',color: AppColors.fbIconColor,height: 24.0,width: 24.0,),
                            ),
                            // const SizedBox(width: 20.0), //SizedBox
                            Flexible(
                              // flex: 1,
                              // fit: FlexFit.loose,
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  'Login with Facebook',
                                  style: TextStyle(
                                    fontFamily: "assets/fonts/poppins_black.ttf",
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 15.0,),
                            InkWell(
                              onTap: (){},
                              hoverColor: Colors.white,
                              splashColor: Colors.white,
                              focusColor: Colors.white,
                              highlightColor: Colors.transparent,
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontFamily: "assets/fonts/poppins_black.ttf",
                                  color: AppColors.primaryColor,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  // fontFamily: GoogleFonts.poppins(),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15.0,),
                            // Icon(
                            //   Icons.delete_outline,
                            //   color: AppColors.greyColor,
                            // ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Don’t have a account?',
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
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => const Register())));
                              },
                              hoverColor: Colors.white,
                              splashColor: Colors.white,
                              focusColor: Colors.white,
                              highlightColor: Colors.transparent,
                              child: const Text(
                                ' Register',
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

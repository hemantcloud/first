import 'package:first/activities/register.dart';
import 'package:first/main.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';

import 'dashboard.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0,bottom: 20.0),
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
                          color: Color(0xFF223263),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          // fontFamily: GoogleFonts.poppins(),
                        ),
                      ),
                      const SizedBox(height: 15.0,),
                      const Text(
                        'Sign in to continue',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFF9098B1),
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
                        style: TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 13.0,
                        ),
                        cursorColor: Color(0xFF9098B1),
                        decoration: const InputDecoration(
                          labelText: 'Your Email',
                          labelStyle: TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                          // icon for outside the input field
                          // icon: Icon(Icons.people),
                          // prefix for inside the input field
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgIcon('assets/images/authenticate_icons/message.svg',color: Color(0xFFF54258)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEBF0FF),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEBF0FF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: 48.0,
                      child: TextFormField(
                        style: const TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 13.0,
                        ),
                        cursorColor: Color(0xFF9098B1),
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                          // icon for outside the input field
                          // icon: Icon(Icons.people),
                          // prefix for inside the input field
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgIcon('assets/images/authenticate_icons/password.svg',color: Color(0xFFF54258)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              // color: Color(0xFFEBF0FF)
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEBF0FF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => Dashboard())));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            // width: MediaQuery.of(context).size.width * 100.0,
                            //height: MediaQuery.of(context).size.height * 0.06,
                            height: 57.0,
                            // width: 343.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF54258),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Text(
                              'Sign In',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    //       Text('OR',style: TextStyle(color: Color(0xFF9098B1),fontWeight: FontWeight.w700,fontSize: 12.0)),
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
                          border: Border.all(color: const Color(0xFFe1e3ea),width: 1.0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Image.asset('assets/images/Google.png'),
                            ),
                            // const SizedBox(width: 20.0), //SizedBox
                            Flexible(
                              flex: 1,
                              // fit: FlexFit.loose,
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Login with Google',style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF9098B1)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 57.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFe1e3ea),width: 1.0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Image.asset('assets/images/Facebook.png'),
                            ),
                            // const SizedBox(width: 20.0), //SizedBox
                            Flexible(
                              // flex: 1,
                              // fit: FlexFit.loose,
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Login with Facebook',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,color: Color(0xFF9098B1),
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
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Color(0xFFF54258),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  // fontFamily: GoogleFonts.poppins(),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15.0,),
                            // Icon(
                            //   Icons.delete_outline,
                            //   color: Color(0xFF9098B1),
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
                                color: Color(0xFF9098B1),
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
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => Register())));
                              },
                              hoverColor: Colors.white,
                              splashColor: Colors.white,
                              focusColor: Colors.white,
                              child: const Text(
                                ' Register',
                                style: TextStyle(
                                  color: Color(0xFFFB7181),
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

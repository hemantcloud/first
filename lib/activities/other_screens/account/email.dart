import 'package:first/activities/other_screens/account/profile.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
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
          'Email',
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
              padding: const EdgeInsets.only(top: 0.0, bottom: 10.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Change Email',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 48.0,
                      child: TextFormField(
                        initialValue: 'Derlaxy@yahoo.com',
                        // cursorHeight: 20.0,
                        cursorColor: AppColors.greyColor,
                        // showCursor: true,
                        style: const TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.0,
                              color: AppColors.borderColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.0,
                              color: AppColors.primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgIcon(
                                'assets/images/authenticate_icons/message.svg',
                                color: AppColors.primaryColor),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'We Will Send verification to your New Email',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.focusBlueBorderColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () {},
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
              'Save',
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

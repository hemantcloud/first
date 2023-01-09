import 'package:first/activities/other_screens/account/profile.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class ChangeName extends StatefulWidget {
  const ChangeName({Key? key}) : super(key: key);

  @override
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
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
          'Name',
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
                      'First Name',
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
                        initialValue: 'Maximus',
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
                              color: AppColors.focusBlueBorderColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Last Name',
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
                        initialValue: 'Gold',
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
                              color: AppColors.focusBlueBorderColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
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

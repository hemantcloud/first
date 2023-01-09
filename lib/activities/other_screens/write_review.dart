import 'package:first/activities/other_screens/product_review.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class WriteReview extends StatefulWidget {
  const WriteReview({Key? key}) : super(key: key);

  @override
  State<WriteReview> createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',
              color: AppColors.greyColor),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const ProductReview()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Write Review',
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
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0, bottom: 20.0),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Please write Overall level of satisfaction with your shipping / Delivery Service',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/write_review_star.png',
                            height: 32.0,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        const Text(
                          '4/5',
                          style: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Write Your Review',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      style: const TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.greyColor,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
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
                        // prefixIcon: Icon(Icons.person_outline,color: Color(0xFFF54258)),
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
                        //       color: Color(0xFFEBF0FF)
                        //   ),
                        // ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: Color(0xFFEBF0FF),
                        //   ),
                        // ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Add Photo',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 72.0,
                        width: 72.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.borderColor2, width: 1.0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SvgIcon('assets/images/plus.svg',
                              color: AppColors.greyColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

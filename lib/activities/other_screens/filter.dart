import 'package:first/activities/other_screens/search_result.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/cross.svg',
              color: AppColors.greyColor),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: ((context) => SearchResult()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Filter Search',
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Price Range',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.43,
                        height: 48.0,
                        child: TextFormField(
                          initialValue: '\$1.245',
                          // cursorHeight: 20.0,
                          cursorColor: AppColors.greyColor,
                          // showCursor: true,
                          style: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: AppColors.greyColor,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: AppColors.borderColor,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: AppColors.borderColor,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.43,
                        height: 48.0,
                        child: TextFormField(
                          initialValue: '\$1.245',
                          // cursorHeight: 20.0,
                          cursorColor: AppColors.greyColor,
                          // showCursor: true,
                          style: TextStyle(
                            fontFamily: "assets/fonts/poppins_black.ttf",
                            color: AppColors.greyColor,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: AppColors.borderColor,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: AppColors.borderColor,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            RangeSlider(
              values: _currentRangeValues,
              max: 100,
              divisions: 200,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
              activeColor: AppColors.primaryColor,
              inactiveColor: AppColors.borderColor,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 20.0, bottom: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        'MIN',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'MAX',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Condition',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50.0,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'New',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Used',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Not Specified',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Buying Format',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'All Listings',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Accepts Offer',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Auction',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Buy It Now',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Classified Ads',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Item Location',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'US Only',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'North America',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Europe',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Asia',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Show Only',
                      style: TextStyle(
                        fontFamily: "assets/fonts/poppins_black.ttf",
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Free Returns',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.borderColor2, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Returns Accepted',
                            style: TextStyle(
                              fontFamily: "assets/fonts/poppins_black.ttf",
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Authorized Seller',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Completed Items',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Sold Items',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Deals & Savings',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Sale Items',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Listed as Lots',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Search in Description',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Benefits charity',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.borderColor2, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Authenticity Verified',
                        style: TextStyle(
                          fontFamily: "assets/fonts/poppins_black.ttf",
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
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
              'Apply',
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

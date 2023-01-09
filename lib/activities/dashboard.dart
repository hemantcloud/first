import 'package:first/activities/home/home.dart';
import 'package:first/activities/other_pages/offer.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:svg_icon/svg_icon.dart';

import 'other_pages/account.dart';
import 'other_pages/cart.dart';
import 'other_pages/explore.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _HomeState();
}
var widgetOptions = [
  Home(),
  Explore(),
  Cart(),
  Offer(),
  Account(),
];


class _HomeState extends State<Dashboard> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {


    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        // print("index>>>>${_selectedIndex}");
      });
    }
    return Scaffold(
      body: widgetOptions[
        _selectedIndex
      ],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6.0),
              child: SvgIcon('assets/images/navigationbar/home.svg'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6.0),
              child: SvgIcon('assets/images/navigationbar/search.svg'),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6.0),
              child: SvgIcon('assets/images/navigationbar/cart.svg'),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6.0),
              child: SvgIcon('assets/images/navigationbar/offer.svg'),
            ),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6.0),
              child: SvgIcon('assets/images/navigationbar/account.svg'),
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.w400,
        ),
        unselectedItemColor: AppColors.greyColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

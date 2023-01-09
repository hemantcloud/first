import 'package:first/activities/other_screens/notification_screens/notification.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class NotificationOffer extends StatefulWidget {
  const NotificationOffer({Key? key}) : super(key: key);

  @override
  State<NotificationOffer> createState() => _NotificationOfferState();
}

class _NotificationOfferState extends State<NotificationOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',color: Color(0xFF9098B1)),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => NotificationScreen()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Offer',
          style: TextStyle(
            color: Color(0xFF223263),
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
              padding: const EdgeInsets.only(top: 10.0,),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            SvgIcon('assets/images/navigationbar/offer.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                          ],
                        ),
                        const SizedBox(width: 20.0,),
                        const Expanded(
                          child: Text(
                            'The Best Title',
                            style: TextStyle(
                              color: Color(0xFF223263),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 61.0,right: 10.0),
                    child: const Text(
                      "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
                      style: TextStyle(
                        color: Color(0xFF9098B1),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    margin: const EdgeInsets.only(left: 61.0,),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'April 30, 2014 1:01 PM',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0,),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            SvgIcon('assets/images/navigationbar/offer.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                          ],
                        ),
                        const SizedBox(width: 20.0,),
                        const Expanded(
                          child: Text(
                            'SUMMER OFFER 98% Cashback',
                            style: TextStyle(
                              color: Color(0xFF223263),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 61.0,right: 10.0),
                    child: const Text(
                      "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor",
                      style: TextStyle(
                        color: Color(0xFF9098B1),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    margin: const EdgeInsets.only(left: 61.0,),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'April 30, 2014 1:01 PM',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0,),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            SvgIcon('assets/images/navigationbar/offer.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                          ],
                        ),
                        const SizedBox(width: 20.0,),
                        const Expanded(
                          child: Text(
                            'Special Offer 25% OFF',
                            style: TextStyle(
                              color: Color(0xFF223263),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 61.0,right: 10.0),
                    child: const Text(
                      "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
                      style: TextStyle(
                        color: Color(0xFF9098B1),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    margin: const EdgeInsets.only(left: 61.0,),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'April 30, 2014 1:01 PM',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:first/activities/dashboard.dart';
import 'package:first/activities/other_screens/notification_screens/notification_activity.dart';
import 'package:first/activities/other_screens/notification_screens/notification_feed.dart';
import 'package:first/activities/other_screens/notification_screens/notification_offer.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',color: Color(0xFF9098B1)),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => Dashboard()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Notification',
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
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const NotificationOffer())));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/navigationbar/offer.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                            SizedBox(width: 10.0,),
                            Text(
                              'Offer',
                              style: TextStyle(
                                color: Color(0xFF223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: const Color(0xFFFB7181),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const NotificationFeed())));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/other_icons/feed.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                            SizedBox(width: 10.0,),
                            Text(
                              'Feed',
                              style: TextStyle(
                                color: Color(0xFF223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: const Color(0xFFFB7181),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => NotificationActivity())));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
                            SvgIcon('assets/images/other_icons/notification.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                            SizedBox(width: 10.0,),
                            Text(
                              'Activity',
                              style: TextStyle(
                                color: Color(0xFF223263),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: const Color(0xFFFB7181),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
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

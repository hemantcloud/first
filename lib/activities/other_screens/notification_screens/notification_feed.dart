import 'package:first/activities/other_screens/notification_screens/notification.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class NotificationFeed extends StatefulWidget {
  const NotificationFeed({Key? key}) : super(key: key);

  @override
  State<NotificationFeed> createState() => _NotificationFeedState();
}

class _NotificationFeedState extends State<NotificationFeed> {
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
          'Feed',
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
              padding: const EdgeInsets.only(top: 0.0,),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/product_images/feed1.png',
                      width: 48.0,
                      height: 48.0,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'New Product',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        "Nike Air Zoom Pegasus 36 Miami - Special For your Activity",
                        style: TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'June 3, 2015 5:06 PM',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/product_images/feed2.png',
                    width: 48.0,
                    height: 48.0,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Best Product',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        "Nike Air Zoom Pegasus 36 Miami - Special For your Activity",
                        style: TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'June 3, 2015 5:06 PM',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/product_images/feed3.png',
                    width: 48.0,
                    height: 48.0,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'New Product',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        "Nike Air Zoom Pegasus 36 Miami - Special For your Activity",
                        style: TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'June 3, 2015 5:06 PM',
                        style: TextStyle(
                          color: Color(0xFF223263),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

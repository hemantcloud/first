import 'package:first/activities/other_screens/notification_screens/notification.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class NotificationActivity extends StatefulWidget {
  const NotificationActivity({Key? key}) : super(key: key);

  @override
  State<NotificationActivity> createState() => _NotificationActivityState();
}

class _NotificationActivityState extends State<NotificationActivity> {
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
          'Activity',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: SvgIcon('assets/images/other_icons/activity.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Transaction Nike Air Zoom Product',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
                          style: TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          'April 30, 2014 1:01 PM',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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
                  child: SvgIcon('assets/images/other_icons/activity.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Transaction Nike Air Zoom Pegasus 36 Miami',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor",
                          style: TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          'April 30, 2014 1:01 PM',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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
                  child: SvgIcon('assets/images/other_icons/activity.svg',color: Color(0xFFF54258),width: 24.0,height: 24.0),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Transaction Nike Air Max',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
                          style: TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          'April 30, 2014 1:01 PM',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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

import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:svg_icon/svg_icon.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  DateTime _currentDate = DateTime(2023, 1, 5);
  DateTime _currentDate2 = DateTime(2023, 1, 5);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2019, 2, 3));
  DateTime _targetDateTime = DateTime(2019, 2, 3);
//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static final Widget _eventIcon = Container(
    // decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: const BorderRadius.all(Radius.circular(1000)),
    //     border: Border.all(color: Colors.blue, width: 2.0,
    //     ),
    // ),
    child: const Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  final EventList<Event> _markedDateMap = EventList<Event>(
    events: {
      DateTime(2019, 2, 10): [
        Event(
          date: DateTime(2019, 2, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: const EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        Event(
          date: DateTime(2019, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        Event(
          date: DateTime(2019, 2, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  @override
  void initState() {
    /// Add more events to _markedDateMap EventList
    _markedDateMap.add(
        DateTime(2019, 2, 25),
        Event(
          date: DateTime(2019, 2, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        DateTime(2019, 2, 10),
        Event(
          date: DateTime(2019, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(DateTime(2019, 2, 11), [
      Event(
        date: DateTime(2019, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      Event(
        date: DateTime(2019, 2, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      Event(
        date: DateTime(2019, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// Example with custom icon

    /// Example Calendar Carousel without header and custom prev & next button
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      dayPadding: 0.0,
      selectedDayButtonColor: AppColors.primaryColor,
      selectedDayBorderColor: AppColors.primaryColor,
      todayBorderColor: AppColors.primaryColor,
      nextMonthDayBorderColor: AppColors.borderColor,
      weekdayTextStyle: const TextStyle(
        color: AppColors.greyColor,
        fontWeight: FontWeight.w700
      ),
      daysTextStyle: const TextStyle(
          color: AppColors.greyColor,
      ),
      onDayPressed: (date, events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: false,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: const TextStyle(
        color: AppColors.lightPrimaryColor,
      ),
      staticSixWeekFormat: false,
      thisMonthDayBorderColor: AppColors.borderColor,
      weekFormat: false,
      firstDayOfWeek: 0,
      markedDatesMap: _markedDateMap,
      height: 420.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
      const CircleBorder(side: BorderSide(color: Colors.transparent)),
      markedDateCustomTextStyle: const TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: false,
      todayTextStyle: const TextStyle(
        color: Colors.blue,
      ),
      // markedDateShowIcon: true,
      // markedDateIconMaxShown: 2,
      // markedDateIconBuilder: (event) {
      //   return event.icon;
      // },
      // markedDateMoreShowTotal:
      //     true,
      todayButtonColor: Colors.white,
      selectedDayTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700
      ),
      minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
      maxSelectedDate: _currentDate.add(const Duration(days: 360)),
      prevDaysTextStyle: const TextStyle(
        fontSize: 16,
        color: AppColors.borderColor,
      ),
      inactiveDaysTextStyle: const TextStyle(
        color: AppColors.borderColor,
        fontSize: 16.0,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          //custom icon
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            // child: _calendarCarousel,
          ), // This trailing comma makes auto-formatting nicer for build methods.
          //custom icon without header
          Container(
            margin: const EdgeInsets.only(
              top: 30.0,
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextButton(
                    child: const SvgIcon(
                      'assets/images/other_icons/left.svg',
                      color: AppColors.greyColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _targetDateTime = DateTime(
                            _targetDateTime.year, _targetDateTime.month - 1);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    _currentMonth,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      color: AppColors.secondaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    child: const SvgIcon(
                      'assets/images/other_icons/right.svg',
                      color: AppColors.greyColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _targetDateTime = DateTime(
                            _targetDateTime.year, _targetDateTime.month + 1);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: _calendarCarouselNoHeader,
          ), //
        ],
      ),
    );
  }
}
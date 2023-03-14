import 'package:carousel_slider/carousel_slider.dart';
import 'package:first/activities/other_screens/super_flash_sale.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';
// import 'package:stream_duration/stream_duration.dart';

class CarouselWithDotsPage extends StatefulWidget {
  List<String> imgList;

  CarouselWithDotsPage({required this.imgList});

  @override
  _CarouselWithDotsPageState createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                child: Stack(
                  children: [
                    // Image.network(
                    //   item,
                    //   fit: BoxFit.cover,
                    //   width: 1000,
                    // ),
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                      // height: 390.0,
                    ),
                    Positioned(
                      top: 20.0,
                      left: 15.0,
                      // top: 32.0,
                      // left: 24.0,
                      right: 0.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              // Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              // 'No. ${widget.imgList.indexOf(item)} image',
                              'Super Flash Sale\n50% Off',
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                // fontSize: 24.0,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0.0, bottom: 10.0),
                            ),
                            SlideCountdownSeparated(
                              duration: Duration(hours: 8, minutes: 30),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              width: 42.0,
                              height: 42.0,
                              separator: ' : ',
                              textStyle: TextStyle(
                                color: AppColors.secondaryColor,
                                fontWeight: FontWeight.w700,
                                // fontSize: 16.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              separatorStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
        .toList();

    return Column(
      children: [
        // Padding(
        //   padding: EdgeInsets.all(20),
        //   child: Text(
        //     "Carousel With Image, Text & Dots",
        //     style: TextStyle(
        //       color: Colors.green[700],
        //       fontWeight: FontWeight.bold,
        //       fontSize: 18,
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
          child: CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                // autoPlay: true,
                viewportFraction: 1.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? AppColors.primaryColor
                    : AppColors.borderColor,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

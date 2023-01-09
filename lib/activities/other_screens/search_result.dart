import 'package:first/activities/home/other_products.dart';
import 'package:first/activities/other_screens/filter.dart';
import 'package:first/activities/other_screens/short_by.dart';
import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
const List<String> list = <String>['Man Shoes','One', 'Two', 'Three', 'Four'];
class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
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
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Search Result',
            style: TextStyle(
              color: AppColors.secondaryColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const ShortBy())));
            },
            child: const SvgIcon('assets/images/other_icons/short_icon.svg',color: AppColors.greyColor),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0,left: 5.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const Filter())));
              },
              child: const SvgIcon(
                'assets/images/other_icons/filter.svg'
                ,color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0.0,bottom: 10.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0,bottom: 20.0,left: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        '145 Result',
                        // style: GoogleFonts.roboto(),
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      SearchFilter(),
                    ],
                  ),
                ],
              ),
            ),
            const OtherProducts(),
            const SizedBox(height: 20.0),
            const OtherProducts(),
            const SizedBox(height: 20.0),
            const OtherProducts(),
            const SizedBox(height: 20.0),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Image.asset('assets/images/other_icons/not_found.png',width: MediaQuery.of(context).size.width * 0.5,),
            //     const Text(
            //       'Product Not Found',
            //       style: TextStyle(
            //         fontSize: 24.0,
            //         fontWeight: FontWeight.w700,
            //         color: AppColors.secondaryColor,
            //       ),
            //     ),
            //     const SizedBox(height: 10.0,),
            //     const Text(
            //       'thank you for shopping using lafyuu',
            //       style: TextStyle(
            //         fontSize: 12.0,
            //         fontWeight: FontWeight.w400,
            //         color: AppColors.greyColor,
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(20.0),
            //       child: Column(
            //         children: [
            //           InkWell(
            //             onTap: (){
            //               Navigator.push(context, MaterialPageRoute(builder: ((context) => const Dashboard())));
            //             },
            //             child: Container(
            //               alignment: Alignment.center,
            //               height: 57.0,
            //               // width: 343.0,
            //               decoration: BoxDecoration(
            //                 color: const AppColors.primaryColor,
            //                 borderRadius: BorderRadius.circular(5.0),
            //               ),
            //               child: const Text(
            //                 'Back to Home',
            //                 textAlign: TextAlign.center,
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const SvgIcon('assets/images/other_icons/bottom.svg',color: AppColors.greyColor),
      elevation: 16,
      style: const TextStyle(
        color: AppColors.secondaryColor,
        fontWeight: FontWeight.w700,
        fontSize: 12.0,
      ),
      underline: Container(
        height: 0,
        color: Colors.transparent,
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

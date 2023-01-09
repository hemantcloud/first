import 'package:first/activities/other_screens/account/profile.dart';
import 'package:first/activities/other_screens/address/address.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
const List<String> list = <String>['United States','United Kingdom','Afghanistan','Albania','American Samoa'];
class EditAddress extends StatefulWidget {
  const EditAddress({Key? key}) : super(key: key);

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',color: Color(0xFF9098B1)),
          // onPressed: () => Navigator.of(context).pop(),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Edit Address',
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
              padding: const EdgeInsets.only(top: 0.0,bottom: 10.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Country or region',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: SearchFilter(),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First Name',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            initialValue: 'Ahmad',
                            // cursorHeight: 20.0,
                            cursorColor: Color(0xFF9098B1),
                            // showCursor: true,
                            style: TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Last Name',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            initialValue: 'Khaidir',
                            // cursorHeight: 28.0,
                            cursorColor: Color(0xFF9098B1),
                            // showCursor: true,
                            style: TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Street Address',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            initialValue: '7021 Parker Rd undefined',
                            // cursorHeight: 20.0,
                            cursorColor: Color(0xFF9098B1),
                            // showCursor: true,
                            style: TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Street Address 2 (Optional)',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                          initialValue: '4333 Edwards Rd undefined',
                            // cursorHeight: 20.0,
                            cursorColor: Color(0xFF9098B1),
                            // showCursor: true,
                            style: TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'City',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            initialValue: 'Richardson',
                            // cursorHeight: 20.0,
                            cursorColor: Color(0xFF9098B1),
                            // showCursor: true,
                            style: TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'State/Province/Region',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            initialValue: 'Oregon',
                            // cursorHeight: 20.0,
                            cursorColor: Color(0xFF9098B1),
                            // showCursor: true,
                            style: TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Zip Code',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            initialValue: '57793',
                            // cursorHeight: 20.0,
                            cursorColor: Color(0xFF9098B1),
                            // showCursor: true,
                            style: TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            initialValue: '(316) 555-0116',
                            // cursorHeight: 20.0,
                            cursorColor: Color(0xFF9098B1),
                            // showCursor: true,
                            style: TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: InkWell(
          onTap: (){},
          child: Container(
            alignment: Alignment.center,
            // width: MediaQuery.of(context).size.width * 100.0,
            //height: MediaQuery.of(context).size.height * 0.06,
            height: 57.0,
            // width: 343.0,
            decoration: BoxDecoration(
              color: const Color(0xFFF54258),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Text(
              'Save  Address',
              textAlign: TextAlign.center,
              style: TextStyle(
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
class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: dropdownValue,
      icon: const SvgIcon('assets/images/other_icons/bottom.svg',color: Color(0xFF9098B1)),
      borderRadius: BorderRadius.circular(5.0),
      elevation: 16,
      style: const TextStyle(
        color: Color(0xFF9098B1),
        fontWeight: FontWeight.w700,
        fontSize: 12.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Color(0xFFEBF0FF),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Color(0xFF40BFFF),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      isExpanded: true,
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

import 'package:first/activities/other_screens/account/profile.dart';
import 'package:first/activities/other_screens/address/address.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
const List<String> list = <String>['United States','United Kingdom','Afghanistan','Albania','American Samoa'];
class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
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
          'Add Address',
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Country or region',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: const SearchFilter(),
                        ),
                        const SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'First Name',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            // cursorHeight: 20.0,
                            cursorColor: const Color(0xFF9098B1),
                            // showCursor: true,
                            style: const TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Last Name',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            // cursorHeight: 20.0,
                            cursorColor: const Color(0xFF9098B1),
                            // showCursor: true,
                            style: const TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Street Address',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            // cursorHeight: 20.0,
                            cursorColor: const Color(0xFF9098B1),
                            // showCursor: true,
                            style: const TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Street Address 2 (Optional)',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            // cursorHeight: 20.0,
                            cursorColor: const Color(0xFF9098B1),
                            // showCursor: true,
                            style: const TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'City',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            // cursorHeight: 20.0,
                            cursorColor: const Color(0xFF9098B1),
                            // showCursor: true,
                            style: const TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'State/Province/Region',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            // cursorHeight: 20.0,
                            cursorColor: const Color(0xFF9098B1),
                            // showCursor: true,
                            style: const TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Zip Code',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            // cursorHeight: 20.0,
                            cursorColor: const Color(0xFF9098B1),
                            // showCursor: true,
                            style: const TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Phone Number',
                          style: TextStyle(
                            color: Color(0xFF223263),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 48.0,
                          child: TextFormField(
                            // cursorHeight: 20.0,
                            cursorColor: const Color(0xFF9098B1),
                            // showCursor: true,
                            style: const TextStyle(
                              color: Color(0xFF9098B1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEBF0FF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Color(0xFF40BFFF),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
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
        padding: const EdgeInsets.all(16.0),
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
              'Add Address',
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
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: Color(0xFFEBF0FF),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
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

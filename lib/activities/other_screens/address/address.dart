import 'package:first/activities/dashboard.dart';
import 'package:first/activities/other_screens/address/add_address.dart';
import 'package:first/activities/other_screens/address/delete_address_confirmation.dart';
import 'package:first/activities/other_screens/address/edit_address.dart';
import 'package:first/activities/other_screens/cart/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const SvgIcon('assets/images/other_icons/left.svg',color: Color(0xFF9098B1)),
          // onPressed: () => Navigator.of(context).pop(),
          // onPressed: () => Navigator.pop(context),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Address',
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
              padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF40BFFF),width: 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Priscekila',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF223263),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9098B1),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '+99 1234567890',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9098B1),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditAddress())));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 77.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF54258),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Text(
                                    'Edit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20.0,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const DeleteAddressConfirmation())));
                            },
                            child: const SvgIcon(
                              'assets/images/trash.svg',
                              color: Color(0xFF9098B1),
                              height: 24.0,width: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFEBF0FF),width: 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ahmad Khaidir',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF223263),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9098B1),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '+99 1234567890',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9098B1),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditAddress())));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 77.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF54258),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Text(
                                    'Edit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20.0,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const DeleteAddressConfirmation())));
                            },
                            child: const SvgIcon(
                              'assets/images/trash.svg',
                              color: Color(0xFF9098B1),
                              height: 24.0,width: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const AddAddress())));
          },
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

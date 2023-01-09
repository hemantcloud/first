import 'package:first/activities/dashboard.dart';
import 'package:first/activities/other_screens/address/address.dart';
import 'package:flutter/material.dart';
class DeleteAddressConfirmation extends StatefulWidget {
  const DeleteAddressConfirmation({Key? key}) : super(key: key);

  @override
  State<DeleteAddressConfirmation> createState() => _DeleteAddressConfirmationState();
}

class _DeleteAddressConfirmationState extends State<DeleteAddressConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset('assets/images/other_icons/alert_icon.png',width: MediaQuery.of(context).size.width * 0.5,),
              const Text(
                'Confirmation',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF223263),
                ),
              ),
              const SizedBox(height: 10.0,),
              const Text(
                'Are you sure wanna delete address',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9098B1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 57.0,
                        // width: 343.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF54258),
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3D40BFFF),
                              offset: const Offset(
                                0.0,
                                10.0,
                              ),
                              blurRadius: 30.0,
                            ),
                          ],
                        ),
                        child: const Text(
                          'Delete',
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 57.0,
                        // width: 343.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFEBF0FF),width: 1.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Text(
                          'Cancel',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF9098B1),
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
        ],
      ),
    );
  }
}

import 'package:first/activities/dashboard.dart';
import 'package:flutter/material.dart';
class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/other_icons/success_icon.png',width: MediaQuery.of(context).size.width * 0.5,),
          const Text(
            'Success',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFF223263),
            ),
          ),
          const SizedBox(height: 10.0,),
          const Text(
            'thank you for shopping using lafyuu',
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
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const Dashboard())));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 57.0,
                    // width: 343.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF54258),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text(
                      'Back to Order',
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
        ],
      ),
    );
  }
}

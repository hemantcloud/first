import 'package:first/activities/other_screens/payment/add_card.dart';
import 'package:first/activities/other_screens/payment/add_payment.dart';
import 'package:first/activities/other_screens/payment/credit_and_debit_card.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class EditCard extends StatefulWidget {
  const EditCard({Key? key}) : super(key: key);

  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgIcon('assets/images/other_icons/left.svg',color: Color(0xFF9098B1)),
          // onPressed: () => Navigator.of(context).pop(),
          // onPressed: () => Navigator.pop(context),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Lailyfa Febrina Card',
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
              padding: const EdgeInsets.only(bottom: 10.0),
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
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => AddCard())));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF54258),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24.0,),
                        Image.asset(
                          'assets/images/mastercard_image.png',
                          height: 18.0,
                        ),
                        const SizedBox(height: 24.0,),
                        const Text(
                          '6326  9124  8124  9875',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 24.0,),
                        Row(
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'CARD HOLDER',
                                  style: TextStyle(
                                    color: Color(0xFFF98E9B),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text(
                                  'Lailyfa Febrina',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 24.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'CARD SAVE',
                                  style: TextStyle(
                                    color: Color(0xFFF98E9B),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text(
                                  '19/2042',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24.0,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Card Number',
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
                        textAlignVertical: TextAlignVertical.bottom,
                        // cursorHeight: 20.0,
                        cursorColor: const Color(0xFF9098B1),
                        // showCursor: true,
                        style: const TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter Card Number',
                          hintStyle: const TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Expiration Date',
                            style: TextStyle(
                              color: Color(0xFF223263),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0,),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Security Code',
                            style: TextStyle(
                              color: Color(0xFF223263),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 48.0,
                            child: TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                              // cursorHeight: 20.0,
                              cursorColor: const Color(0xFF9098B1),
                              // showCursor: true,
                              style: const TextStyle(
                                color: Color(0xFF9098B1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Expiration Date',
                                hintStyle: const TextStyle(
                                  color: Color(0xFF9098B1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
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
                        ),
                        const SizedBox(width: 10.0,),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 48.0,
                            child: TextFormField(
                        textAlignVertical: TextAlignVertical.bottom,
                              // cursorHeight: 20.0,
                              cursorColor: const Color(0xFF9098B1),
                              // showCursor: true,
                              style: const TextStyle(
                                color: Color(0xFF9098B1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Security Code',
                                hintStyle: const TextStyle(
                                  color: Color(0xFF9098B1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
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
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0,),
                    const Text(
                      'Card Holder',
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
                        textAlignVertical: TextAlignVertical.bottom,
                        // cursorHeight: 20.0,
                        cursorColor: const Color(0xFF9098B1),
                        // showCursor: true,
                        style: const TextStyle(
                          color: Color(0xFF9098B1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter Card Number',
                          hintStyle: const TextStyle(
                            color: Color(0xFF9098B1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
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
              'Save',
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

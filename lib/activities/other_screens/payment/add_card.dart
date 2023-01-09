import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
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
          'Add Card',
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
              'Add Card',
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

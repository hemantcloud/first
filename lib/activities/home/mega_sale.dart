import 'package:first/activities/other_screens/product_detail.dart';
import 'package:flutter/material.dart';

class MegaSale extends StatelessWidget {
  const MegaSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 238.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                //  Product 1 start
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const ProductDetail())));
                  },
                  child: Container(
                    width: 141.0,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe1e3ea),width: 1.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0,bottom: 16.0,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/product_images/product_image8.png',
                            width: 109.0,
                            height: 109.0,
                          ),
                          const Text(
                            'FS - Nike Air Max 270 React',
                            // style: GoogleFonts.roboto(),
                            style: TextStyle(
                              color: Color(0xFF223263),
                              fontSize: 10.0,
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\$299,43",
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '\$534,33',
                                    style: TextStyle(
                                      color: Color(0xFF9098B1),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.lineThrough,
                                      // decorationThickness: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    '24% Off',
                                    style: TextStyle(
                                      color: Color(0xFFFB7181),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Product 1 end
                const SizedBox(width: 16.0,),
                //  Product 2 start
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const ProductDetail())));
                  },
                  child: Container(
                    width: 141.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe1e3ea),width: 1.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0,bottom: 16.0,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/product_images/product_image7.png',
                            width: 109.0,
                            height: 109.0,
                          ),
                          const Text(
                            'FS - QUILTED MAXI CROS',
                            // style: GoogleFonts.roboto(),
                            style: TextStyle(
                              color: Color(0xFF223263),
                              fontSize: 10.0,
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\$299,43",
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '\$534,33',
                                    style: TextStyle(
                                      color: Color(0xFF9098B1),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    '24% Off',
                                    style: TextStyle(
                                      color: Color(0xFFFB7181),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Product 2 end
                const SizedBox(width: 16.0,),
                //  Product 3 start
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const ProductDetail())));
                  },
                  child: Container(
                    width: 141.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe1e3ea),width: 1.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0,bottom: 16.0,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/product_images/product_image1.png',
                            width: 109.0,
                            height: 109.0,
                          ),
                          const Text(
                            'FS - Nike Air Max 270 React',
                            // style: GoogleFonts.roboto(),
                            style: TextStyle(
                              color: Color(0xFF223263),
                              fontSize: 10.0,
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\$299,43",
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    '\$534,33',
                                    style: TextStyle(
                                      color: Color(0xFF9098B1),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    '24% Off',
                                    style: TextStyle(
                                      color: Color(0xFFFB7181),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Product 3 end
              ],
            ),
          ],
        ),
      ),
    );
  }
}

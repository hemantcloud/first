import 'package:first/activities/other_screens/cart/payment_method.dart';
import 'package:first/activities/other_screens/cart/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
class CreditOrDebitCard extends StatefulWidget {
  const CreditOrDebitCard({Key? key}) : super(key: key);

  @override
  State<CreditOrDebitCard> createState() => _CreditOrDebitCardState();
}

class _CreditOrDebitCardState extends State<CreditOrDebitCard> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgIcon('assets/images/other_icons/left.svg',color: Color(0xFF9098B1)),
          // onPressed: () => Navigator.of(context).pop(),
          // onPressed: () => Navigator.pop(context),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => PaymentMethod()))),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Choose Card',
          style: TextStyle(
            color: Color(0xFF223263),
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgIcon('assets/images/plus.svg',color: Color(0xFF40BFFF)),
          ),
        ],
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
            CreditCardWidget(
              // height: 230,
              glassmorphismConfig: useGlassMorphism ? Glassmorphism.defaultConfig() : null,
              cardNumber: '6326912481249875',
              expiryDate: '19/2042',
              cardHolderName: 'Lailyfa Febrina',
              cvvCode: cvvCode,
              // bankName: 'Axis Bank',
              showBackView: isCvvFocused,
              obscureCardNumber: true,
              obscureCardCvv: true,
              isHolderNameVisible: true,
              cardBgColor: Colors.green,
              // backgroundImage: useBackgroundImage ? 'assets/card_bg.png' : null,
              backgroundImage: 'assets/images/card_bg_image.png',
              isSwipeGestureEnabled: true,
              onCreditCardWidgetChange:
                  (CreditCardBrand creditCardBrand) {},
              customCardTypeIcons: <CustomCardTypeIcon>[
                CustomCardTypeIcon(
                  cardType: CardType.mastercard,
                  cardImage: Image.asset(
                    'assets/mastercard.png',
                    height: 48,
                    width: 48,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) => SuccessScreen())));
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
              'Pay \$766.86',
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

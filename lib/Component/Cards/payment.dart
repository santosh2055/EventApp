import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/Component/PopupDialog/Coupon.dart';
import 'package:task/Screen/registration_screen.dart';
import '../../constant.dart';

class PaymentCard extends StatefulWidget {
  @override
  _PaymentCardState createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    var kcardhedingtextstyle2 = kcardhedingtextstyle;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          height: 482,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 15, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text('How do you pay?', style: kcardhedingtextstyle2),
                ),
                SizedBox(
                  height: 21,
                ),
                Text('Price of ticket', style: ktextstyle1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Rs', style: ktextstyle1),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Container(
                        width: 200,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: '40', hintStyle: khintextstyle),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset('assets/icons/checkbox.svg'),
                    SizedBox(width: 10),
                    Text(
                      'Free',
                      style: ktextstyle1,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: (context),
                            builder: (ctx) => Dialog(
                                  insetPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Type of charge',
                                              style: khintextstyle,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'Fee percentage',
                                              style: khintextstyle,
                                            ),
                                            SizedBox(width: 10),
                                            Stack(
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icons/addinstabagound.svg',
                                                    height: 30),
                                                Positioned(
                                                  left: 0,
                                                  right: 0,
                                                  top: 10,
                                                  child: SvgPicture.asset(
                                                    'assets/icons/bplus.svg',
                                                    height: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Distribution\nCharges',
                                              style: ktextstyle1,
                                            ),
                                            SizedBox(
                                              width: 40,
                                            ),
                                            Text(
                                              '3%',
                                              style: ktextstyle1,
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 40),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 6),
                                              child: ElevatedButton(
                                                  style: buttonstyle2,
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Delete',
                                                    style: ktextstyle1,
                                                  )),
                                            ),
                                            SizedBox(width: 10),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: SvgPicture.asset(
                                                  'assets/icons/addbutton.svg'),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ));
                      },
                      child: Text('Add fee distribution', style: ktextstyle1),
                    ),
                    CouponPopUp()
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Payment Method',
                  style: ktextstyle1,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/checkbox.svg'),
                    SizedBox(width: 10),
                    Text('Cash', style: knormaltext),
                    SizedBox(width: 35),
                    SvgPicture.asset('assets/icons/checkbox.svg'),
                    SizedBox(width: 10),
                    Text('Credit/Debit', style: knormaltext),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/checkbox.svg'),
                    SizedBox(width: 10),
                    Text('UPI', style: knormaltext),
                    SizedBox(width: 50),
                    SvgPicture.asset('assets/icons/checkbox.svg'),
                    SizedBox(width: 10),
                    Text('Electronic Bank Transfer', style: knormaltext),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/checkbox.svg'),
                    SizedBox(width: 10),
                    Text('Mobile Payment', style: knormaltext),
                  ],
                ),
                SizedBox(height: 20),
                Text('Add payment method', style: knormaltext),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RegistrationScreen.routeName);
                      },
                      child: SvgPicture.asset('assets/icons/doneButton.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

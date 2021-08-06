import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          height: 450,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 15, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text('About Your Event', style: kcardhedingtextstyle2),
                ),
                SizedBox(
                  height: 21,
                ),
                Text('Price of ticket', style: ktextstyle1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Rs.', style: ktextstyle1),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Container(
                        width: 200,
                        child: TextField(
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
                    Text('Add fee distribution', style: ktextstyle1),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Text('Add Coupon Code',style: ktextstyle1,),
                                Row(
                                  children: [
                                    Radio(
                                        value: (value) {},
                                        groupValue: 1,
                                        onChanged: null),
                                    Text(
                                      'Enter Coupon Code',
                                      style: ktextstyle1,
                                    ),
                                    Container(
                                      width: 25,
                                      child: TextField(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/cuponicon.svg'),
                              SizedBox(width: 1),
                              Text(
                                'Coupon Code',
                                style: ktextstyle1,
                              )
                            ],
                          ),
                        ),
                        height: 40,
                        width: 135,
                        decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

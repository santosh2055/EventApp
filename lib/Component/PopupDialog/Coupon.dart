import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant.dart';

class CouponPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Add Coupon Code',
                    style: ktextstyle1,
                  ),
                ),
                Row(
                  children: [
                    Radio(
                        fillColor: MaterialStateProperty.all(Color(0xff7F71D9)),
                        value: (value) {},
                        groupValue: 1,
                        onChanged: null),
                    Text(
                      'Enter Coupon Code',
                      style: ktextstyle1,
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'kntf', hintStyle: khintextstyle),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        fillColor: MaterialStateProperty.all(Color(0xff7F71D9)),
                        value: (value) {},
                        groupValue: 1,
                        onChanged: null),
                    Text(
                      'Generate Code',
                      style: ktextstyle1,
                    ),
                    SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 25,
                          color: Color(0xffE3E3E3),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'ktnf',
                            style: khintextstyle,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {}, child: Text('Cancel', style: ktextstyle1)),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset('assets/icons/addbutton.svg'),
              ),
            ],
          ),
        );
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/cuponicon.svg'),
              SizedBox(width: 3),
              Text(
                'Coupon Code',
                style: ktextstyle1,
              )
            ],
          ),
        ),
        height: 32,
        width: 135,
        decoration: BoxDecoration(
          color: Color(0xffF0F0F0),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

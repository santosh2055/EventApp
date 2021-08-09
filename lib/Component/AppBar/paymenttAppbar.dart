import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppbar2 extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      color: Color(0xffF0F0F0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: SvgPicture.asset(
                  'assets/icons/arrow_back.svg',
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.15),
              Text(
                'New Event',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff363636)),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: SvgPicture.asset(
                            'assets/icons/plus.svg',
                            color: Color(0xff7F71D9),
                          ),
                        ),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xff7F71D9), width: 1),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 45,
                        color: Color(0xff7F71D9),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            'assets/icons/stper2.svg',
                            color: Color(0xff7F71D9),
                          ),
                        ),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xff7F71D9), width: 1),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 45,
                        color: Color(0xff7F71D9),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            'assets/icons/doller.svg',
                            color: Color(0xff7F71D9),
                          ),
                        ),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xff7F71D9), width: 1),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 45,
                        color: Color(0xffC4C4C4),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            'assets/icons/correct.svg',
                          ),
                        ),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xffC4C4C4), width: 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 185, top: 5),
                child: Text(
                  'Payment',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color(0xff7F71D9), fontSize: 9),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  final Size preferredSize = const Size.fromHeight(125);
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
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
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: SvgPicture.asset(
                            'assets/icons/plus.svg',
                          ),
                        ),
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xff7F71D9), width: 1.2),
                        ),
                      ),
                      Container(
                        height: 1.5,
                        width: 45,
                        color: Color(0xffC4C4C4),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            'assets/icons/stper2.svg',
                          ),
                        ),
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xffC4C4C4), width: 1.2),
                        ),
                      ),
                      Container(
                        height: 1.5,
                        width: 45,
                        color: Color(0xffC4C4C4),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            'assets/icons/doller.svg',
                          ),
                        ),
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xffC4C4C4), width: 1.2),
                        ),
                      ),
                      Container(
                        height: 1.5,
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
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Color(0xffC4C4C4), width: 1.2),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Create Event',
                  style: TextStyle(color: Color(0xff7F71D9), fontSize: 14),
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

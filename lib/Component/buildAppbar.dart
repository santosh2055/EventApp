import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container buildAppbar(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.25,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/arrow_back.svg',
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.15),
              Text(
                'New Event',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: SvgPicture.asset(
                      'assets/icons/plus.svg',
                    ),
                  ),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Color(0xff7F71D9), width: 1.5),
                  ),
                ),
                Container(
                  height: 2,
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
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Color(0xffC4C4C4), width: 1.5),
                  ),
                ),
                Container(
                  height: 2,
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
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Color(0xffC4C4C4), width: 1.5),
                  ),
                ),
                Container(
                  height: 2,
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
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Color(0xffC4C4C4), width: 1.5),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Create Event',
                style: TextStyle(color: Color(0xff7F71D9)),
              ),
            )
          ],
        )
      ],
    ),
    decoration: BoxDecoration(
      color: Color(0xffF0F0F0),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/Component/Dropdown/End_time.dart';
import 'package:task/Component/Dropdown/Start_time.dart';

class TimeDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            content: Container(
              height: 80,
              width: 100,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                    children: [
                      Text('START TIME'),
                      Text('END TIME')
                    ],
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                    children: [
                      StartTime(),
                      Text('To'),
                      EndTime()
                    ],
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Text('Clear')),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Save'))
            ],
          ),
        );
      },
      child: SvgPicture.asset(
        'assets/icons/suffix.svg',
        height: 13,
      ),
    );
  }
}
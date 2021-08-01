import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'color.dart';

class ColorPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ColorPicker(),
                SizedBox(height: 7),
                ColorPicker(),
                SizedBox(height: 7),
                ColorPicker(),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Color(0xff666666)),
                  )),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xffF0F0F0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(color: Color(0xff7F71D9)),
                ),
              )
            ],
          ),
        );
      },
      child: SvgPicture.asset(
        'assets/icons/colorpicker.svg',
        width: 15,
        height: 15,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomField extends StatefulWidget {
  @override
  _CustomFieldState createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  Items? selected;

  List<Items> _itemslist = [
    Items(
      title: 'Short Answer',
      icon: SvgPicture.asset('assets/icons/answer.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'Paragraph',
      icon: SvgPicture.asset('assets/icons/paragraph.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'CheckBox',
      icon: SvgPicture.asset('assets/icons/checkbox.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'Multiple Choice',
      icon: SvgPicture.asset('assets/icons/paragraph.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'Dropdown',
      icon: SvgPicture.asset('assets/icons/paragraph.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'File/image upload',
      icon: SvgPicture.asset('assets/icons/Upload.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'Linear Scale',
      icon: SvgPicture.asset('assets/icons/Scalelinear.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'Multiple Choice grid',
      icon: SvgPicture.asset('assets/icons/gridmchoice.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'Tick box Grid',
      icon: SvgPicture.asset('assets/icons/paragraph.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'Date',
      icon: SvgPicture.asset('assets/icons/date.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
    Items(
      title: 'Time',
      icon: SvgPicture.asset('assets/icons/time.svg'),
      line: SvgPicture.asset('assets/icons/line.svg'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 215,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xff666666))),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Row(
            children: [
              _itemslist[0].icon,
              Text('Multiple Choice')
            ],
          ),
            icon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SvgPicture.asset(
                'assets/icons/suffix.svg',
                height: 9,
              ),
            ),
            value: selected,
            onChanged: (newValue) {
              setState(() {
                selected = newValue as Items?;
              });
            },
            items: _itemslist.map<DropdownMenuItem<Items>>((valueItem) {
              return DropdownMenuItem<Items>(
                value: valueItem,
                child: Container(
                  width: 184,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            valueItem.icon,
                            SizedBox(width: 8),
                            Text(valueItem.title.toString())
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList()),
      ),
    );
  }
}

class Items {
  String title;
  SvgPicture icon;
  SvgPicture line;
  Items({required this.title, required this.icon, required this.line});
}

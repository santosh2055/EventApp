import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/Component/Dropdown/CustomField.dart';

import '../../constant.dart';

class CustomPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (ctx) => Dialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 15,right: 15,bottom: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Custom Field', style: ktextstyle1),
                    Container(
                      width: 210,
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Field Name',
                              hintStyle: khintextstyle)),
                    ),
                    SizedBox(height: 20),
                    CustomField(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 32,
                          width: 215,
                          decoration: kDecoration1,
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            mainAxisAlignment:
                                MainAxisAlignment.end,
                            children: [
                              Text('Movies', style: ktextstyle1),
                              SvgPicture.asset(
                                'assets/icons/blueline.svg',
                                width: 240,
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Stack(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/linkshadow.svg',
                              height: 40,
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: SvgPicture.asset(
                                'assets/icons/image.svg',
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/blackCircleOutline.svg',
                                  height: 15,
                                ),
                                Positioned(
                                  right: 0,
                                  left: 0,
                                  top: 2.4,
                                  child: SvgPicture.asset(
                                    'assets/icons/blackCircle.svg',
                                    height: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Text('Option1', style: knormaltext)
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset('assets/icons/cancel.svg',height: 8,)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/blackCircleOutline.svg',
                                  height: 15,
                                ),
                                Positioned(
                                  right: 0,
                                  left: 0,
                                  top: 2.4,
                                  child: SvgPicture.asset(
                                    'assets/icons/blackCircle.svg',
                                    height: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Text('Option2', style: knormaltext)
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset('assets/icons/cancel.svg',height: 8,)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/blackCircleOutline.svg',
                                  height: 15,
                                ),
                                Positioned(
                                  right: 0,
                                  left: 0,
                                  top: 2.4,
                                  child: SvgPicture.asset(
                                    'assets/icons/blackCircle.svg',
                                    height: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Text('Option3', style: knormaltext)
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset('assets/icons/cancel.svg',height: 8,)
                      ],
                    ),
                     SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         TextButton(
                      onPressed: () {
                    Navigator.of(context).pop();
                      },
                      child: Text(
                    'Cancel',
                    style: ktextstyle1,
                      )),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Ok',
                      style: kbuttontext,
                    ),
                    style: buttonstyle2,
                  ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Text(
        'Custom...',
        style: knormaltext,
      ),
    );
  }
}

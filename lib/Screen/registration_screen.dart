import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:task/Component/AppBar/registrationAppbar.dart';
import 'package:task/Component/PopupDialog/CustomRegistation.dart';
import 'package:task/Component/buildBootmBar.dart';
import '../../constant.dart';
import 'package:flutter/cupertino.dart';

class RegistrationScreen extends StatefulWidget {
  static const routeName = '/regisration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  DateTime? date;
  final dateformate = DateFormat('dd-MMM-yyyy');
  bool name = true;
  bool email = true;
  bool contact = true;
  bool age = true;
  bool dbirth = true;
  bool profession = true;
  bool address = true;
  bool city = true;
  bool state = true;
  bool country = true;
  bool pincode = true;
  bool job = true;
  bool company = true;
  bool file = true;
  change1(bool newValue) {
    setState(() {
      name = newValue;
    });
  }

  change2(bool newValue) {
    setState(() {
      email = newValue;
    });
  }

  change3(bool newValue) {
    setState(() {
      contact = newValue;
    });
  }

  change4(bool newValue) {
    setState(() {
      age = newValue;
    });
  }

  change5(bool newValue) {
    setState(() {
      dbirth = newValue;
    });
  }

  change6(bool newValue) {
    setState(() {
      profession = newValue;
    });
  }

  change7(bool newValue) {
    setState(() {
      address = newValue;
    });
  }

  change8(bool newValue) {
    setState(() {
      city = newValue;
    });
  }

  change9(bool newValue) {
    setState(() {
      state = newValue;
    });
  }

  change10(bool newValue) {
    setState(() {
      country = newValue;
    });
  }

  change11(bool newValue) {
    setState(() {
      pincode = newValue;
    });
  }

  change12(bool newValue) {
    setState(() {
      job = newValue;
    });
  }

  change13(bool newValue) {
    setState(() {
      company = newValue;
    });
  }

  change14(bool newValue) {
    setState(() {
      file = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar3(),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child:
                        Text('Registration Form', style: kcardhedingtextstyle),
                  ),
                  SizedBox(height: 5),
                  Center(
                      child: Text(
                    'Details to ask the participant',
                    style: knormaltext,
                  )),
                  SizedBox(height: 30),
                  toogleSwitch('Name', name, change1),
                  toogleSwitch('Email', email, change2),
                  toogleSwitch('Contact', contact, change3),
                  toogleSwitch('Age', age, change4),
                  toogleSwitch('Date of Birth bith', dbirth, change5),
                  toogleSwitch('Profession', profession, change6),
                  toogleSwitch('Address', address, change7),
                  toogleSwitch('City', city, change8),
                  toogleSwitch('State', state, change9),
                  toogleSwitch('Country', country, change10),
                  toogleSwitch('Pincode', pincode, change11),
                  toogleSwitch('Job title/role in company', job, change12),
                  toogleSwitch('Company name', company, change13),
                  toogleSwitch('File/Image upload', file, change14),
                  SizedBox(height: 20),
                  CustomPopUp(),
                  SizedBox(height:10),
                  Divider(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Container(
                          width: 140,
                          child: GestureDetector(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2024),
                              ).then((value) {
                                setState(() {
                                  date = value!;
                                });
                              });
                            },
                            child:
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Last day to register', style: ktextstyle1),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                        (date == null)
                                            ? ('7 June 2021')
                                            : dateformate
                                                .format(date!)
                                                .toString(),
                                        style: (date == null)
                                            ? khintextstyle
                                            : knormaltext),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: SvgPicture.asset(
                                        'assets/icons/suffix.svg',
                                        height: 9,
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 122,
                                  color: Colors.black26,
                                ),
                              ],
                            ),
                          ),
                        ),
                          SizedBox(height: 20),
                          Text('Maximum Registartion', style: ktextstyle1),
                          Container(
                            width: 75,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: '500', hintStyle: khintextstyle),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/colorpicker.svg',
                                      height: 15),
                                  Positioned(
                                      left: 2,
                                      top: 2,
                                      child: SvgPicture.asset(
                                        'assets/icons/tickwhite.svg',
                                        height: 10,
                                      ))
                                ],
                              ),
                              SizedBox(width: 5),
                              Text(
                                'by 11:00 pm',
                                style: knormaltext,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Change time',
                            style: GoogleFonts.poppins(
                                fontSize: 10, color: Color(0xff7F71D9)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: SvgPicture.asset('assets/icons/regisrationButtton.svg'))
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: buildBottmBar(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }

  Widget toogleSwitch(String title, bool val, Function changed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: knormaltext),
        Spacer(),
        Transform.scale(
          scale: 0.55,
          child: CupertinoSwitch(
              trackColor: Color(0xffE5E5E5),
              activeColor: Color(0xff7F71D9),
              value: val,
              onChanged: (newValue) {
                changed(newValue);
              }),
        )
      ],
    );
  }
}

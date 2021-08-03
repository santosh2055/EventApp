import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/Screen/second_screen.dart';
import '../../constant.dart';

class Card2 extends StatefulWidget {
  @override
  _Card2State createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  bool showWidget = false;
  bool _selecteAddress = false;
  bool _selectonline = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          height: 515,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 5, left: 7, right: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Where it is held ?',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF0F0F0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                showWidget = false;
                                _selecteAddress = true;
                                _selectonline = false;
                              });
                            },
                            style: _selecteAddress ? buttonstyle : buttonstyle2,
                            child: Text('Address', style: kbuttontext),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                showWidget = true;
                                _selectonline = true;
                                _selecteAddress = false;
                              });
                            },
                            style: _selectonline ? buttonstyle : buttonstyle2,
                            child: Text('Online', style: kbuttontext),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: showWidget ? online() : showAddress(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showAddress() {
    return Column(
      children: [
        SizedBox(height: 5),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Lilabag',
              hintStyle: TextStyle(color: Colors.black26, fontSize: 18),
              labelText: 'Area',
              labelStyle: ktextstyle1),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Door no.',
                  labelStyle: ktextstyle1,
                  hintText: '57/8',
                  hintStyle: khintextstyle,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Street',
                  labelStyle: ktextstyle1,
                  hintText: '87 Sean Manors',
                  hintStyle: khintextstyle,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'City',
                  labelStyle: ktextstyle1,
                  hintText: 'Kathamandu',
                  hintStyle: khintextstyle,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Pin',
                  labelStyle: ktextstyle1,
                  hintText: '42223',
                  hintStyle: khintextstyle,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Office',
              hintStyle: TextStyle(color: Colors.black26, fontSize: 18),
              labelText: 'Name of Address',
              labelStyle: ktextstyle1),
        ),
        SizedBox(height: 50),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 220,
              decoration: kDecoration1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Upload.svg',
                      height: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Upload Photo of Location',
                      style: ktextstyle1.copyWith(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 2),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SecondScreen.routeName);
                },
                child: SvgPicture.asset('assets/icons/Button.svg'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget online() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'Attach a Link',
            style: ktextstyle1,
          ),
          TextFormField(
            decoration: InputDecoration(
              suffixIcon: Stack(
                children: [
                  SvgPicture.asset('assets/icons/linkshadow.svg'),
                  Positioned(
                    left: 5,
                    top: 2,
                    child: SvgPicture.asset('assets/icons/linksuffix.svg'),
                  ),
                ],
              ),
              suffixIconConstraints: BoxConstraints(maxHeight: 30),
              hintText: 'Enter a URL',
              hintStyle: khintextstyle,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Link Expiration',
                      style: ktextstyle1,
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/inactiveRadio.svg',
                          height: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Never',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/inactiveRadio.svg',
                          height: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Expires in 30 Days',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/inactiveRadio.svg',
                          height: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Expires in 30 Days',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/inactiveRadio.svg',
                          height: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Expires in 30 Days',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/circleshadow.svg',
                      height: 55,
                    ),
                    SvgPicture.asset(
                      'assets/icons/circleshadow.svg',
                      height: 55,
                    ),
                    SvgPicture.asset(
                      'assets/icons/circleshadow.svg',
                      height: 55,
                    ),
                    SvgPicture.asset(
                      'assets/icons/circleshadow.svg',
                      height: 55,
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SecondScreen.routeName);
                },
                child: SvgPicture.asset('assets/icons/Button.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

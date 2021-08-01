import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constant.dart';

class Card2 extends StatefulWidget {
  @override
  _Card2State createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          height: 510,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, left: 7, right: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Where it is held ?',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                SizedBox(height: 20),
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
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xffFFFFFF),
                              ),
                            ),
                            child: Text('Address', style: kbuttontext),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextButton(
                              onPressed: () {},
                              child: Text('On Line', style: ktextstyle1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Lilabag',
                      hintStyle: TextStyle(color: Colors.black26, fontSize: 18),
                      labelText: 'Area',
                      labelStyle: ktextstyle1),
                ),
                SizedBox(
                  height: 10,
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
                SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Office',
                      hintStyle: TextStyle(color: Colors.black26, fontSize: 18),
                      labelText: 'Name of Address',
                      labelStyle: ktextstyle1),
                ),
                SizedBox(height: 20),
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
                    child: SvgPicture.asset('assets/icons/Button.svg'),
                  )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

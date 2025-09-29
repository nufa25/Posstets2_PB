import 'package:flutter/material.dart';

class SoundAlarmPage extends StatelessWidget {
  const SoundAlarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.black),
        ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/back_icon.png",
                    width: 24,
                    height: 24,
                  ),
                  Text(
                    "Alarm sound",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/check_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:20, left: 30),
                child: Row(
                  children: [
                    Text(
                      "Your Sounds",
                      style: TextStyle(color: Colors.grey, fontSize: 15, decoration: TextDecoration.none),
                    ),
                  ],
                ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add New",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/add_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10, left: 30),
                child: Row(
                  children: [
                    Text(
                      "Device sounds",
                      style: TextStyle(color: Colors.grey, fontSize: 15, decoration: TextDecoration.none),
                    ),
                  ],
                ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 36, top: 30, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Silent",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Default alarm sound",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alarm",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Beep",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding:EdgeInsets.symmetric(vertical: 36,horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bell",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brisk",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Busy Marimba",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chord",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Classical",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clock",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cuckoo Clock",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dreamer",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Elegantly",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Expectation",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Firm",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Guitar",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Interesting",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jingle",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lesurely",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lithe",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Modulator",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pulse Signal",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Relax",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Swing",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Synth Arpeggio",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Thad Wetland",
                    style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                  ),
                  Image.asset(
                    "assets/circle_icon.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

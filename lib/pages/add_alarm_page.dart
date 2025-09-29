
import 'package:flutter/material.dart';
import 'sound_alarm_page.dart';

class AddAlarmPage extends StatelessWidget {
  const AddAlarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.black),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(right: 15, top: 17),
            child: Image.asset("assets/check_icon.png", width: 40, height: 40),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:17, left: 20),
          child: Image.asset("assets/close_icon.png", width: 40, height: 40),
        ),
        Padding(
          padding: EdgeInsets.only(top:25, left: 70),
          child: Text(
            "Add Alarm",
            style: TextStyle(color: Colors.white, fontSize: 20, decoration: TextDecoration.none),
          ),
        ),
        Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 160),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("12",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40, decoration: TextDecoration.none)),
                        Text("  ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40)),
                        Text("48",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40, decoration: TextDecoration.none)),
                        Text("  ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40, decoration: TextDecoration.none)),
                        Text("PM",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30, decoration: TextDecoration.none)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:80, left: 30),
                    child: Row(
                      children: [
                        Text(
                          "Repeat",
                          style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:40, left: 30),
                    child: Row(
                      children: [
                        Text(
                          "Alarm Sound",
                          style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:40, left: 30),
                    child: Row(
                      children: [
                        Text(
                          "Label",
                          style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

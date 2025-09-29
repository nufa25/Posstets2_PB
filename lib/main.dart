import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/add_alarm_page.dart';
import 'pages/sound_alarm_page.dart';

void main() {
  runApp(const AlarmApp());
}

class AlarmApp extends StatelessWidget {
  const AlarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoundAlarmPage(),
    );
  }
}

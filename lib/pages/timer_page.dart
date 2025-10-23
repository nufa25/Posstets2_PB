import 'package:flutter/material.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: const Center(
        child: Text(
          "Halaman Timer",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

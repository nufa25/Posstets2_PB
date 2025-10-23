import 'package:flutter/material.dart';

class SoundAlarmPage extends StatefulWidget {
  final String? selectedSound;

  const SoundAlarmPage({super.key, this.selectedSound});

  @override
  State<SoundAlarmPage> createState() => _SoundAlarmPageState();
}

class _SoundAlarmPageState extends State<SoundAlarmPage> {
  String? selectedSound;
  final List<String> sounds = [
    "Silent",
    "Default alarm sound",
    "Alarm",
    "Beep",
    "Bell",
    "Brisk",
    "Busy Marimba",
    "Chord",
    "Classical",
    "Clock",
    "Cuckoo Clock",
    "Dreamer",
    "Elegantly",
    "Expectation",
    "Firm",
    "Guitar",
    "Interesting",
    "Jingle",
    "Lesurely",
    "Lithe",
    "Modulator",
    "Popular",
    "Pulse Signal",
    "Relax",
    "Swing",
    "Synth Arpeggio",
    "Thad Wetland",
  ];

  @override
  void initState() {
    super.initState();
    selectedSound = widget.selectedSound;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ListView(
            children: [

              Container(
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context), // kembali tanpa menyimpan
                      child: Image.asset("assets/back_icon.png",
                          width: 24, height: 24),
                    ),
                    const Text(
                      "Alarm sound",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          decoration: TextDecoration.none),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, selectedSound);
                      },
                      child: Image.asset("assets/check_icon.png",
                          width: 24, height: 24),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 20, left: 30),
                child: const Text(
                  "Your Sounds",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      decoration: TextDecoration.none),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Add New",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          decoration: TextDecoration.none),
                    ),
                    Image.asset("assets/add_icon.png",
                        width: 24, height: 24),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30),
                child: const Text(
                  "Device sounds",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      decoration: TextDecoration.none),
                ),
              ),

              for (var sound in sounds)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSound = sound;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(sound,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                decoration: TextDecoration.none)),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: selectedSound == sound
                                  ? Colors.blueAccent
                                  : Colors.white70,
                              width: selectedSound == sound ? 4 : 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

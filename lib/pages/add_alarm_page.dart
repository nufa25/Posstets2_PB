import 'package:flutter/material.dart';
import 'sound_alarm_page.dart';

class AddAlarmPage extends StatefulWidget {
  const AddAlarmPage({super.key});

  @override
  State<AddAlarmPage> createState() => _AddAlarmPageState();
}

class _AddAlarmPageState extends State<AddAlarmPage> {
  List<String> days = [
    'Sunday', 'Monday', 'Tuesday', 'Wednesday',
    'Thursday', 'Friday', 'Saturday'
  ];
  List<String> selectedDays = [];
  String alarmLabel = 'None >';
  String alarmSound = 'Default >';
  int selectedHour = 1;
  int selectedMinute = 0;
  String selectedPeriod = 'AM';

  void _showRepeatBottomSheet() {
    List<String> tempSelectedDays = List.from(selectedDays);
    showModalBottomSheet(
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Container(
              padding: const EdgeInsets.all(20),
              height: 400,
              child: Column(
                children: [
                  const Text('Repeat',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: days.length,
                      itemBuilder: (context, index) {
                        final day = days[index];
                        final isSelected = tempSelectedDays.contains(day);
                        return CheckboxListTile(
                          activeColor: Colors.blueAccent,
                          checkColor: Colors.white,
                          title: Text(day,
                              style: const TextStyle(color: Colors.white)),
                          value: isSelected,
                          onChanged: (value) {
                            setModalState(() {
                              if (value == true) {
                                tempSelectedDays.add(day);
                              } else {
                                tempSelectedDays.remove(day);
                              }
                            });
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel',
                            style: TextStyle(color: Colors.grey)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          setState(() {
                            selectedDays = List.from(tempSelectedDays);
                          });
                          Navigator.pop(context);
                        },
                        child: const Text('Done'),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  String get repeatText {
    if (selectedDays.isEmpty) return 'Never >';
    if (selectedDays.length == 7) return 'Everyday >';
    return '${selectedDays.join(', ')} >';
  }

  void _showLabelBottomSheet() {
    TextEditingController labelController = TextEditingController(
      text: alarmLabel == 'None >' ? '' : alarmLabel.replaceAll(' >', ''),
    );
    showModalBottomSheet(
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Text('Label',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
              const SizedBox(height: 20),
              TextField(
                controller: labelController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Enter alarm label',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      setState(() {
                        alarmLabel = labelController.text.isEmpty
                            ? 'None >'
                            : '${labelController.text} >';
                      });
                      Navigator.pop(context);
                    },
                    child: const Text('Done'),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 160),
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildWheel(12, (index) {
                            setState(() => selectedHour = index + 1);
                          }, (index) => (index + 1).toString().padLeft(2, '0')),
                          const SizedBox(width: 20),
                          _buildWheel(60, (index) {
                            setState(() => selectedMinute = index);
                          }, (index) => index.toString().padLeft(2, '0')),
                          const SizedBox(width: 20),
                          _buildWheel(2, (index) {
                            setState(() =>
                                selectedPeriod = index == 0 ? 'AM' : 'PM');
                          }, (index) => index == 0 ? 'AM' : 'PM'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: _showRepeatBottomSheet,
                      child: _buildSettingContainer("Repeat", repeatText),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SoundAlarmPage(selectedSound: alarmSound)),
                        );
                        if (result != null) {
                          setState(() {
                            alarmSound = "$result >";
                          });
                        }
                      },
                      child:
                          _buildSettingContainer("Alarm Sound", alarmSound),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: _showLabelBottomSheet,
                      child: _buildSettingContainer("Label", alarmLabel),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Positioned(
            top: 17,
            right: 15,
            child: GestureDetector(
              onTap: () {
                final alarmData = {
                  'hour': selectedHour,
                  'minute': selectedMinute,
                  'period': selectedPeriod,
                  'days': selectedDays,
                  'label': alarmLabel.replaceAll(' >', ''),
                  'sound': alarmSound.replaceAll(' >', ''),
                };
                Navigator.pop(context, alarmData);
              },
              child:
                  Image.asset("assets/check_icon.png", width: 40, height: 40),
            ),
          ),

          Positioned(
            top: 17,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child:
                  Image.asset("assets/close_icon.png", width: 40, height: 40),
            ),
          ),
          const Positioned(
            top: 25,
            left: 70,
            child: Text(
              "Add Alarm",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: TextDecoration.none),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWheel(int count, Function(int) onSelected, String Function(int) labelBuilder) {
    return SizedBox(
      width: 70,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 60,
        diameterRatio: 1.5,
        physics: const FixedExtentScrollPhysics(),
        onSelectedItemChanged: onSelected,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) => Center(
            child: Text(
              labelBuilder(index),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  decoration: TextDecoration.none),
            ),
          ),
          childCount: count,
        ),
      ),
    );
  }

  Widget _buildSettingContainer(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  decoration: TextDecoration.none)),
          Text(value,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  decoration: TextDecoration.none)),
        ],
      ),
    );
  }
}

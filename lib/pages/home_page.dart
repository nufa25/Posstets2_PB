import 'package:flutter/material.dart';
import 'add_alarm_page.dart';
import 'timer_page.dart';
import 'sign_in_page.dart';

class HomePage extends StatefulWidget {
  final Map<String, dynamic>? newAlarm;
  final String? username;

  const HomePage({super.key, this.newAlarm, this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Map<String, dynamic>> alarms = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    if (widget.newAlarm != null) {
      Map<String, dynamic> newAlarm = Map.from(widget.newAlarm!);
      newAlarm['isOn'] = true;
      alarms.add(newAlarm);
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = widget.username != null;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Alarm",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              if (isLoggedIn) return;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignInPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Text(
                isLoggedIn ? widget.username! : "Sign In",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),

      body: TabBarView(
        controller: _tabController,
        children: [
          _AlarmTab(
            alarms: alarms,
            onToggle: (index, value) {
              setState(() {
                alarms[index]['isOn'] = value;
              });
            },
          ),
          const TimerPage(),
        ],
      ),

      floatingActionButton: GestureDetector(
        onTap: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddAlarmPage()),
          );

          if (result != null && result is Map<String, dynamic> && context.mounted) {
            Map<String, dynamic> newAlarm = Map.from(result);
            newAlarm['isOn'] = true; 
            setState(() {
              alarms.add(newAlarm);
            });
          }
        },
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
          child: Center(
            child: Image.asset(
              "assets/add_icon.png",
              width: 28,
              height: 28,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: Container(
        color: Colors.black,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent,
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(
              icon: Image.asset(
                "assets/alarm_icon.png",
                width: 30,
                height: 30,
              ),
              text: "Alarm",
            ),
            Tab(
              icon: Image.asset(
                "assets/stopwatch_icon.png",
                width: 30,
                height: 30,
              ),
              text: "Timer",
            ),
          ],
        ),
      ),
    );
  }
}

class _AlarmTab extends StatelessWidget {
  final List<Map<String, dynamic>> alarms;
  final Function(int index, bool value) onToggle;

  const _AlarmTab({required this.alarms, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    if (alarms.isEmpty) {
      return const Center(
        child: Text(
          "No Alarm",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            decoration: TextDecoration.none,
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
      itemCount: alarms.length,
      itemBuilder: (context, index) {
        final alarm = alarms[index];
        final hour = alarm['hour'].toString().padLeft(2, '0');
        final minute = alarm['minute'].toString().padLeft(2, '0');
        final period = alarm['period'];
        final label = alarm['label'].isEmpty ? '' : alarm['label'];
        final repeat = alarm['days'].isEmpty ? 'Never' : alarm['days'].join(", ");
        final isOn = alarm['isOn'] ?? true;

        return Container(
          margin: const EdgeInsets.only(bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "$hour:$minute",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        period,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    label,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    repeat,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Switch(
                value: isOn,
                onChanged: (value) => onToggle(index, value),
                activeColor: Colors.white,
                activeTrackColor: Colors.blueAccent,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey.shade600,
              ),
            ],
          ),
        );
      },
    );
  }
}

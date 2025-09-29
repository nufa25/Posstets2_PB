import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                child: const Text(
                  "Alarm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 240, top: 10),
                child: Image.asset(
                  "assets/add_icon.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
          Container(
            height: 500, 
            margin: EdgeInsets.only(top:50),
            child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: 10,
              children: [
                Center(
                  child: Text(
                    "Tidak ada alarm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

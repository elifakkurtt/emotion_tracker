import 'package:flutter/material.dart';

class QuateDisplayPage extends StatelessWidget {
  const QuateDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: h / 3,
            width: w / 1.5,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 209, 165, 216),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
            child: const Center(
              child: Text(
                "HEY !",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

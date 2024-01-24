import 'package:emotion_tracker/component/green_button.dart';
import 'package:emotion_tracker/controller/emotion_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HistoryPage extends StatelessWidget {
  final EmotionController emotionController = Get.find();

  HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "DATE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider(
                          height: 10,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "EMOTION",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider(
                          height: 10,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ...emotionController.getHistoryList().map(
                (history) {
                  final newDate =
                      DateFormat.yMd().add_Hm().format(history['date']);

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        newDate,
                        style: const TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: w / 2.5,
                        child: Text(
                          history['emotion'],
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: const GreenButton(greenText: "Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

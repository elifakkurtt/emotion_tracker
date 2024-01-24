import 'package:emotion_tracker/component/green_button.dart';
import 'package:emotion_tracker/controller/emotion_controller.dart';
import 'package:emotion_tracker/pages/history_page.dart';
import 'package:emotion_tracker/pages/quote_display_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/emotion_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late String emotion;
  late DateTime date;

  @override
  void initState() {
    emotion = "";
    date = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    final EmotionController emotionController = Get.put(EmotionController());
    final List<String> positiveEmotions = [
      'Alertness',
      'Amusement',
      'Awe',
      'Gratitude',
      'Hope',
      'Joy',
      'Love',
      'Pride',
      'Satisfaction',
    ];
    final List<String> negativeEmotions = [
      'Anger',
      'Anxiety',
      'Contempt',
      'Disgust',
      'Embarrassment',
      'Fear',
      'Guilt',
      'Offense',
      'Sadness',
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "How Are You ?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: w,
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: List.generate(
                    positiveEmotions.length,
                    (index) => EmotionButton(
                      onTap: () {
                        emotion = positiveEmotions[index];
                        Get.to(const QuateDisplayPage());
                      },
                      borderColor: const Color.fromARGB(255, 42, 124, 190),
                      text: positiveEmotions[index],
                      textColor: const Color.fromARGB(255, 122, 179, 226),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: w,
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 10,
                  children: List.generate(
                    negativeEmotions.length,
                    (index) => EmotionButton(
                      onTap: () {
                        emotion = negativeEmotions[index];
                        Get.to(const QuateDisplayPage());
                      },
                      borderColor: const Color.fromARGB(255, 197, 22, 22),
                      text: negativeEmotions[index],
                      textColor: const Color.fromARGB(255, 238, 30, 30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (emotion.isEmpty) {
                    Get.defaultDialog(
                      title: 'ALERT',
                      titleStyle:
                          const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      content: const Text(
                        'Please Make Your Choice',
                        style: TextStyle(fontSize: 20),
                      ),
                      backgroundColor: Colors.green,
                    );
                  } else {
                    emotionController.addEmotion(emotion, date);
                    Get.to(HistoryPage());
                  }
                },
                child:const GreenButton(greenText: "Show History")
              ),
            ],
          ),
        ),
      ),
    );
  }
}

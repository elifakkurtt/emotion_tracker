import 'package:get/get.dart';

class EmotionController extends GetxController {
  RxList<Map<String, dynamic>> historyList = <Map<String, dynamic>>[].obs;

  void addEmotion(String emotion, DateTime date) {
    historyList.add({'emotion': emotion, 'date': date});
  }

  List<Map<String, dynamic>> getHistoryList() {
    return historyList;
  }
 
}

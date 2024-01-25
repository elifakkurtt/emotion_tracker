//import 'dart:convert';
import 'package:get/get.dart';
//import 'package:http/http.dart' as http;

class EmotionController extends GetxController {
  RxList<Map<String, dynamic>> historyList = <Map<String, dynamic>>[].obs;

  void addEmotion(String emotion, DateTime date) {
    historyList.add({'emotion': emotion, 'date': date});
  }

  List<Map<String, dynamic>> getHistoryList() {
    return historyList;
  }

  /*void getFavqs(String emotion) async {
    try {
      var response =
          await http.get(Uri.parse('https://favqs.com/api/$emotion'));
      if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if(data==null){}
      else();
      }
    } catch (e) {
      print(e);
    }*/
}

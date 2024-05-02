import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Textprovider extends ChangeNotifier {
  String textdata ="";
  Future<void> setdata() async {
    notifyListeners();
  }

    Future<void> postData() async {
    final response = await http.post(Uri.parse(
        'http://192.168.29.192:3000/test/signup'));
    if (response.statusCode == 201) {
      
    notifyListeners();

    } else {
      throw Exception('Failed to load data');
    }
  }

  void updateText(String value)async {
    textdata = value;
    notifyListeners();
  }

}

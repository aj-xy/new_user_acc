import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loginprovider extends ChangeNotifier {
  String email1 = "";
  String password1 = "";
  String data = "";

  Future<void> getData() async {
    final response =
        await http.post(Uri.parse('http://192.168.29.192:3000/api/login'));
    if (response.statusCode == 200) {
      data = response.body;
      print(data);
    } else {
      throw Exception("Failed To Get Data");
    }
  }

  void emails(String value) async {
    email1 = value;
    notifyListeners();
  }

  void passwords(String value) async {
    password1 = value;
    notifyListeners();
  }
}

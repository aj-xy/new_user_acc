import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Signupprovider extends ChangeNotifier {
  String fname = "";
  String lname = "";
  String pno = "";
  String email = "";
  String city = "";
  String age = "";
  String password = "";

  Future<void> setdata() async {
    notifyListeners();
  }

  Future<void> postData() async {
    final response =
        await http.post(Uri.parse('http://192.168.29.192:3000/test/signup'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, dynamic>{
              "name": fname,
              "Lname": lname,
              "email": email,
              "mob": pno,
              "city": city,
              "password": password,
              "age": age
            }));

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      throw Exception('Failed to Post data');
    }
  }

  void firstname(String value) async {
    fname = value;
    notifyListeners();
  }

  void lastname(String value) async {
    lname = value;
    notifyListeners();
  }

  void phoneno(String value) async {
    pno = value;
    notifyListeners();
  }

  void emails(String value) async {
    email = value;
    notifyListeners();
  }

  void citystate(String value) async {
    city = value;
    notifyListeners();
  }

  void dob(String value) async {
    age = value;
    notifyListeners();
  }

  void passw(String value) async {
    password = value;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:new_user_acc/loginpage.dart';
import 'package:new_user_acc/providerclass.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Textprovider(),
        child: MaterialApp(
          home: Scaffold(
            body: Center(child: loginpage()),
          ),
        ));
  }
}

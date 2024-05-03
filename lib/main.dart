import 'package:flutter/material.dart';
import 'package:new_user_acc/pages/loginpage.dart';
import 'package:new_user_acc/providers/loginprovider.dart';
import 'package:new_user_acc/providers/providerclass.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Signupprovider(),
          ),
          ChangeNotifierProvider(
            create: (context) => Loginprovider(),
          )
        ],
        child: MaterialApp(
          home: Scaffold(
            body: Center(child: loginpage()),
          ),
        ));
  }
}

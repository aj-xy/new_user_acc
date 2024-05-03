import 'package:flutter/material.dart';
import 'package:new_user_acc/providers/providerclass.dart';
import 'package:provider/provider.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    final signupprovider = Provider.of<Signupprovider>(context);

    return Scaffold(
      backgroundColor: Color.fromRGBO(37, 50, 55, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(27, 153, 139, 1),
        title: Text(
          "SignUp",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                onChanged: (value) {
                  signupprovider.firstname(value);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "First Name",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(255, 255, 255, 1)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  signupprovider.lastname(value);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Last Name",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(255, 255, 255, 1)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  signupprovider.emails(value);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(255, 255, 255, 1)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  signupprovider.passw(value);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(255, 255, 255, 1)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  signupprovider.phoneno(value);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Mobile",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(255, 255, 255, 1)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  signupprovider.citystate(value);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "City",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(255, 255, 255, 1)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  signupprovider.dob(value);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Age",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(255, 255, 255, 1)),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<Signupprovider>(context,listen: false).postData();
                  },
                  child: Text("SignUp"))
            ],
          ),
        ),
      )),
    );
  }
}

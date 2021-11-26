import 'package:flutter/material.dart';
import 'package:hayuktrip_app/screens/mainpage.dart';
import 'login.dart';
import 'dart:async';
import 'homepage.dart';

class LoginSucess extends StatefulWidget {
  final int id;
  final String fname;
  final String lname;
  final String email;

  const LoginSucess(
      {Key? key,
      required this.id,
      required this.fname,
      required this.lname,
      required this.email})
      : super(key: key);

  @override
  State<LoginSucess> createState() => _LoginSucessState();
}

class _LoginSucessState extends State<LoginSucess> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => MainPage(
              id: widget.id,
              fname: widget.fname,
              lname: widget.lname,
              email: widget.email)),
    );
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const SizedBox(height: 150.0),
                    const CircularProgressIndicator(),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Logging in'),
              ],
            ),
          ),
        ),
      );
}

class LoginFail extends StatefulWidget {
  @override
  State<LoginFail> createState() => _LoginFailState();
}

class _LoginFailState extends State<LoginFail> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, _showDialog);
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Login Failed"),
          content: Text(
            'Invalid email or password.\nPlease try again.',
            textAlign: TextAlign.left,
          ),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(height: 150.0),
                  const CircularProgressIndicator(),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Logging in'),
            ],
          ),
        ),
      );
}

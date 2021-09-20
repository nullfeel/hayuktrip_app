import 'package:flutter/material.dart';

void main() => runApp(Splash());

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset(
              //   '',
              //   width: 82,
              // ),
              Icon(Icons.music_video),
              Text(
                'Test',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hayuktrip_app/screens/splash.dart';

void main() => runApp(HayukTrip());

class HayukTrip extends StatelessWidget {
  const HayukTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: ThemeData(
          fontFamily: 'overpass',
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}

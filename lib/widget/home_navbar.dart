import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavbar extends StatelessWidget {
  final String text;
  final icon;
  HomeNavbar(this.text, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 98, 215, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hayuktrip_app/screens/home_screen.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            icon: Icon(Icons.cabin),
            focusColor: Color.fromRGBO(53, 98, 215, 1),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.luggage),
            focusColor: Color.fromARGB(1, 53, 98, 215),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.person),
            focusColor: Color.fromARGB(1, 53, 98, 215),
          )
        ],
      ),
    );
  }
}

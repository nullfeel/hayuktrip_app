import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hayuktrip_app/const/path.dart';
import 'package:hayuktrip_app/components/utils.dart';
import 'home_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Paths.bgsplash,
            // fit: BoxFit.fitWidth,
            // height: MediaQuery.of(context).size.height,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 3,
                            left: 15,
                          ),
                        ),
                        Container(
                          width: 330,
                          child: RichText(
                            maxLines: 12,
                            text: TextSpan(
                              text: 'Explore\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 37),
                              children: [
                                TextSpan(
                                  text: 'New Places\n',
                                ),
                                WidgetSpan(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                30),
                                    child: Text(
                                      'HayukTrip providing the best travel service in Indonesia, your money is our money LOL.',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      label: Text(
                        'GET STARTED',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(53, 98, 215, 1),
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size.fromWidth(310),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

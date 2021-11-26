import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hayuktrip_app/const/path.dart';
import 'package:hayuktrip_app/components/utils.dart';
import 'package:hayuktrip_app/screens/login.dart';
import 'homepage.dart';
// import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Paths.bgsplash,
            fit: BoxFit.fitWidth,
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
                child: SafeArea(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 50,
                              left: 30,
                            ),
                          ),
                          Container(
                            width: 330,
                            child: RichText(
                              maxLines: 8,
                              text: TextSpan(
                                text: 'Explore New Places',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 37),
                                children: [
                                  WidgetSpan(
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 30),
                                      child: Text(
                                        'You can use HayukTrip to book a trip anywhere in the world, but it’s especially geared towards Indonesian travel and is one of the continent’s top three travel companies.',
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
                              builder: (context) => LoginPage(),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}

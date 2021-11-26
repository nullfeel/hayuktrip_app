import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hayuktrip_app/widget/home_item.dart';
import 'package:hayuktrip_app/const/path.dart';
import 'package:hayuktrip_app/widget/home_navbar.dart';
import 'package:hayuktrip_app/widget/bottom_appbar.dart';
import 'booking_screen.dart';

class HomeScreen extends StatefulWidget {
  final int id;
  final String fname;
  final String lname;
  final String email;

  const HomeScreen(
      {Key? key,
      required this.id,
      required this.fname,
      required this.lname,
      required this.email})
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _currentIndex = 0;
  // double _homenav = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  // final key = GlobalKey();
  // @override
  // void setState(VoidCallback fn) {
  //   // TODO: implement setState
  //   super.setState(fn);
  // }

  @override
  Widget build(BuildContext context) {
    final homemenubarheight = MediaQuery.of(context).size.height / 2.4;
    return Column(
      children: [
        Container(
          height: homemenubarheight,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Paths.bgsplash),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text(
                            'Good Morning, ${widget.fname}',
                            style: TextStyle(
                                fontSize: 38, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'We provide the best travel service',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                      Wrap(
                        spacing: 13,
                        alignment: WrapAlignment.center,
                        children: [
                          HomeNavbar('Flights', Icons.flight),
                          HomeNavbar('Cars', Icons.time_to_leave),
                          HomeNavbar('Hotels', Icons.hotel),
                          HomeNavbar('Cruises', Icons.directions_boat)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height -
              kMinInteractiveDimension -
              homemenubarheight -
              14,
          width: double.infinity,
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Wrap(
                        spacing: 30,
                        runSpacing: 30,
                        children: [
                          Text(
                            'TRENDING TRIP PACKAGE',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'overpass'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          HomeItem(
                            routeing: BookingScreen(),
                          ),
                          HomeItem(
                            routeing: BookingScreen(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

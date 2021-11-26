import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'homepage.dart';
// import 'package:myflutter/bookTravel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'login.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  final int id;
  final String fname;
  final String lname;
  final String email;

  const MainPage(
      {Key? key,
      required this.id,
      required this.fname,
      required this.lname,
      required this.email})
      : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Future deleteUser() async {
    int userId = widget.id;

    final response = await http.post(
      // 10.0.2.2, 192.168.100.44
      Uri.parse('https://api.hayuktrip.tech/delete.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, int>{
        'id': userId,
      }),
    );

    if (response.statusCode == 200) {
      print(response.statusCode);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Account Deleted Successfully'),
            content: Text(
              'Returning to login screen.',
              textAlign: TextAlign.left,
            ),
            actions: <Widget>[
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
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
    } else {
      print(response.statusCode);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Account Delete Failed'),
              content: Text(
                'Please try again later.',
                textAlign: TextAlign.left,
              ),
              actions: <Widget>[
                TextButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    }
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("WARNING"),
          content: Text(
            'Are you sure you want to delete your account?',
            textAlign: TextAlign.left,
          ),
          actions: <Widget>[
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop();
                deleteUser();
              },
            ),
          ],
        );
      },
    );
  }

  Widget showScreen(int index) {
    if (index == 0) {
      return HomeScreen(
          id: widget.id,
          fname: widget.fname,
          lname: widget.lname,
          email: widget.email);
    } else if (index == 1) {
      return ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text('Yogyakarta Epic'),
              subtitle: Text('Order ID: 92388 | Name : Jon Ken'),
              trailing: Icon(Icons.check_rounded),
              isThreeLine: true,
            ),
          )
        ],
      );
    }
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: CachedNetworkImageProvider(
                'https://i.ibb.co/mt2zFtZ/Profile.jpg',
              ),
            ),
          ),
          Divider(
            height: 70,
            color: Colors.grey,
          ),
          Row(
            children: [
              Icon(Icons.person_outline),
              SizedBox(width: 5),
              Text(
                'NAME',
                style: TextStyle(
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            '${widget.fname} ${widget.lname}',
            style: TextStyle(
              color: Colors.amber[900],
              letterSpacing: 1,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Text(
                'EMAIL',
                style: TextStyle(
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            '${widget.email}',
            style: TextStyle(
              color: Colors.amber[900],
              letterSpacing: 1,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 100),
          Row(
            children: [
              Expanded(
                  child: OutlinedButton(
                      onPressed: _showDialog, child: Text('DELETE ACCOUNT'))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text('LOGOUT'))),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: pageScreens[currentIndex],
      body: showScreen(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active_outlined),
            label: "Book Travel",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.apartment_rounded),
          //   label: "Book Hotel",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

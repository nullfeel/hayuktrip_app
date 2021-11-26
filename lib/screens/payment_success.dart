import 'package:hayuktrip_app/animation/fade.dart';
import 'package:hayuktrip_app/screens/mainpage.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  _PaymentSuccessState createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(40.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeAnimation(
                  1,
                  Image.network(
                    'https://imgproxy-us-east-2.icons8.com/ltCW3YLb4XxweZuRkomhzDLSZJRE_n750Q5UktmzOZU/rs:fit:1216:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNTA5/LzQxNjViOTRlLTIw/MmUtNGQzMS05YTBk/LTlhMWQ5MTUxMmE4/Yy5zdmc.png/download?filename=urban-199.png',
                    width: 250,
                  )),
              SizedBox(
                height: 50.0,
              ),
              FadeAnimation(
                  1.2,
                  Text(
                    'Payment Success! 🥳',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20.0,
              ),
              FadeAnimation(
                  1.3,
                  Text(
                    'Hooray! Your payment proccess has \n been completed successfully..',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 16.0, color: Colors.grey.shade700),
                  )),
              SizedBox(
                height: 140.0,
              ),
              FadeAnimation(
                1.4,
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainPage(
                                id: 1,
                                email: 'jon@gmail.com',
                                fname: 'Jon',
                                lname: 'Ken')));
                  },
                  height: 50,
                  elevation: 0,
                  splashColor: Colors.blue[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue[800],
                  child: Center(
                    child: Text(
                      "Back to Home",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              FadeAnimation(
                  1.4,
                  Text(
                    'Thank you for trusting your trip with us.',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  )),
            ],
          ),
        ));
  }
}

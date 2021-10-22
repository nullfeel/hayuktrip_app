import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hayuktrip_app/const/path.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Paths.one), fit: BoxFit.cover),
                ),
                child: ClipRect(
                  child: SafeArea(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.bookmark,
                          color: Colors.black,
                        )
                      ],
                    ),
                  )),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.50,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 85,
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_pin),
                                      Text('Thailand')
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 241, 16, 1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(251, 193, 16, 1),
                                      ),
                                      Text('4.8 (2.5k reviews)')
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'How to get around Indonesia on the cheap budget in 2021',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_pin),
                                      Column(
                                        children: [
                                          Text(
                                            'Duration',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('7 Days')
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Material(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromRGBO(245, 246, 255, 1),
                                        child: Icon(Icons.location_pin),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Duration',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('7 Days')
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_pin),
                                      Column(
                                        children: [
                                          Text(
                                            'Duration',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('7 Days')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  bottom: BorderSide(
                                      color: Colors.grey, width: 0.5),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              runSpacing: 10,
                              children: [
                                Text(
                                  'DAY 1 - BALI',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  'Bali is an Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs. The island is home to religious sites such as cliffside Uluwatu Temple. To the south, the beachside city of Kuta has lively bars, while Seminyak, Sanur and Nusa Dua are popular resort towns. The island is also known for its yoga and meditation retreats.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'Recomended Hotel',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Container(
                              height: 300,
                              width: double.infinity,
                              child: Text('Content Here'),
                              decoration: BoxDecoration(color: Colors.blue),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

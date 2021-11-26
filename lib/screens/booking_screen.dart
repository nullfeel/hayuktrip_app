import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hayuktrip_app/const/path.dart';
import 'package:hayuktrip_app/screens/cart.dart';

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
                // child: ClipRect(
                //   child: SafeArea(
                //     child: Padding(
                //       padding: EdgeInsets.only(left: 10, right: 10),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Icon(
                //             Icons.arrow_back,
                //             color: Colors.black,
                //           ),
                //           Icon(
                //             Icons.bookmark,
                //             color: Colors.black,
                //           )
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.70,
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
                                      Text('Indonesia')
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
                              'Yogyakarta Epic Trip get the best trip ever in your life.',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Container(
                            //   width: MediaQuery.of(context).size.width / 1.1,
                            //   child: Row(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Row(
                            //         children: [
                            //           Icon(Icons.location_pin),
                            //           Column(
                            //             children: [
                            //               Text(
                            //                 'Duration',
                            //                 style: TextStyle(
                            //                     fontWeight: FontWeight.bold),
                            //               ),
                            //               Text('7 Days')
                            //             ],
                            //           )
                            //         ],
                            //       ),
                            //       Row(
                            //         children: [
                            //           Material(
                            //             borderRadius: BorderRadius.circular(10),
                            //             color: Color.fromRGBO(245, 246, 255, 1),
                            //             child: Icon(Icons.location_pin),
                            //           ),
                            //           Column(
                            //             children: [
                            //               Text(
                            //                 'Duration',
                            //                 style: TextStyle(
                            //                     fontWeight: FontWeight.bold),
                            //               ),
                            //               Text('7 Days')
                            //             ],
                            //           )
                            //         ],
                            //       ),
                            //       Row(
                            //         children: [
                            //           Icon(Icons.location_pin),
                            //           Column(
                            //             children: [
                            //               Text(
                            //                 'Duration',
                            //                 style: TextStyle(
                            //                     fontWeight: FontWeight.bold),
                            //               ),
                            //               Text('7 Days')
                            //             ],
                            //           )
                            //         ],
                            //       ),
                            //     ],
                            //   ),
                            //   decoration: BoxDecoration(
                            //     border: Border(
                            //       top: BorderSide(
                            //         color: Colors.grey,
                            //         width: 0.5,
                            //       ),
                            //       bottom: BorderSide(
                            //           color: Colors.grey, width: 0.5),
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              runSpacing: 10,
                              children: [
                                Text(
                                  'Day 1 / Stop 1 – Borobudur Temple',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  'Possibly the biggest reason to visit Yogyakarta’s Borobudur Temple is not in the city, but it is a 40-minute drive away in the Kedu Valley, Central Java. The Borobudur Temple Compounds is one of the greatest Buddhist monuments in the world, and Indonesia’s most visited attraction. It was built in the 8th and 9th centuries AD during the reign of the Syailendra Dynasty.  It was abandoned in the 14th century as the population converted to Islam. Now a UNESCO World Heritage Site, it has since been restored and has only been open to the public for less than 50 years.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'Day 1 / Stop 2 – Klipoh, Pottery Village',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  'Just down the drive from Borobudur temple is a small village in Karanganyar regency well-known for producing pottery. Reliefs carved in Borobudur displaying a pottery-making process, suggest Klipoh could have existed since the ninth century.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'Day 1 / Stop 3 – Ullen Sentalu Museum',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  'A visit to the Ullen Sentalu Museum is a nice way to learn about Javanese culture on your Yogyakarta itinerary and is arguably one of the best museums in the city. The museum gives great insight into how the city looked in the old days. You will find photographs of Yogyakarta back in the day, as well as ancient batik, period paintings, and even antique manuscripts and letters.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                )
                                // Text(
                                //   'Recomended Hotel',
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.bold,
                                //       fontSize: 15),
                                // ),
                              ],
                            ),
                            // Container(
                            //   height: 300,
                            //   width: double.infinity,
                            //   child: Text('List hotel here'),
                            //   decoration: BoxDecoration(color: Colors.blue),
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              child: Text('Checkout'),
              // style:
              //     ButtonStyle(fixedSize: MaterialStateProperty.all(Size(60, ))),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hayuktrip_app/const/path.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 211,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
              image: new ExactAssetImage(Paths.one),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '7 DAYS / 2 PERSON',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 13,
              ),
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.yellow,
                ),
                Text(
                  '4.8',
                  style: TextStyle(fontSize: 13),
                )
              ],
            )
          ],
        ),
        Text(
          'How to get around Indonesia on the cheap budget in 2021',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        )
      ],
    );
  }
}

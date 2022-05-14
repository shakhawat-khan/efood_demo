import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PopularItem extends StatelessWidget {
  String itemName;

  PopularItem({required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset(
                'assets/food.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                RatingBar.builder(
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                  itemSize: 20,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  '\$50',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.favorite),
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.add)
              ],
            )
          ],
        ),
      ),
    );
  }
}

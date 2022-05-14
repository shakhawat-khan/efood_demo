import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SetMenu extends StatelessWidget {
  String name;

  SetMenu({required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Container(
          height: 250,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/food.jpg',
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(name),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text('Set Menu'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RatingBar.builder(
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                    itemSize: 20,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$50',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                  Icon(
                    Icons.add,
                    size: 30,
                  )
                ],
              )
            ],
          ),
        ));
    ;
  }
}

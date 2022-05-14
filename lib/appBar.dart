import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Color(0xffFC6957),
    title: Text(
      'Restaurant is close now, will be open at 9:00am',
      style: TextStyle(color: Colors.black, fontSize: 16),
    ),
  );
}

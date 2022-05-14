import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Banner_show extends StatelessWidget {
  const Banner_show({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        semanticContainer: true,
        elevation: 10.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: EdgeInsets.all(10),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Image.asset(
          'assets/banner.jpg',
          fit: BoxFit.fill,
          height: 100,
          width: 300,
        ));
  }
}

import 'package:efood/banner.dart';
import 'package:efood/popular_item.dart';
import 'package:efood/set_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: const <Widget>[
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'eFood',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffDF7065),
                      fontSize: 25),
                ),
                Spacer(),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.notifications,
                  size: 25,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: 'Search items here ...',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_list_outlined),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'All Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/food.jpg'),
                        radius: 35,
                      ),
                      Text('Bengali'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/food.jpg'),
                        radius: 35,
                      ),
                      Text('Indian'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/food.jpg'),
                        radius: 35,
                      ),
                      Text('First-Food'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/food.jpg'),
                        radius: 35,
                      ),
                      Text('chinese'),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(
                      'Set Menu',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Text('View all'),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                //Text('hello'),
                SetMenu(
                  name: 'Bangali Breakfast',
                ),
                SizedBox(
                  width: 10,
                ),
                SetMenu(name: 'Indian Breakfast'),
                SizedBox(
                  width: 10,
                ),
                SetMenu(name: 'Chinese Breakfast')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 10),
            child: Text('Banner',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [Banner_show(), Banner_show()],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(
                      'Popular Item',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Text('View all'),
              ],
            ),
          ),
          PopularItem(
            itemName: 'item name 1',
          ),
          PopularItem(
            itemName: 'item name 2',
          ),
          PopularItem(
            itemName: 'item name 3',
          ),
          PopularItem(
            itemName: 'item name 4',
          ),
        ],
      ),
    );
  }
}

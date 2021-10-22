import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final bottomBarItems = ['Home', 'Favorites', 'Search', 'Settings'];
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
      height: 45.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 1.0,
            spreadRadius: 7.0,
            offset: const Offset(0, 3.0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.blue,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.blue,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_rounded),
            color: Colors.blue,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

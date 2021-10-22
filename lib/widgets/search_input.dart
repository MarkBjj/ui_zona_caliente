import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.grey[30],
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(14.0),
            ),
            hintText: 'Search Here',
            prefixIcon: Container(
              padding: EdgeInsets.all(7.0),
              child: Icon(Icons.search),
            ),
            contentPadding: EdgeInsets.all(2.0)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryMenu extends StatefulWidget {
  CategoryMenu({Key? key}) : super(key: key);

  @override
  _CategoryMenuState createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  final List categoryList = [
    'Newest Girls',
    'Asian',
    'Black',
    'Fitness',
    'Models',
    'All Girls'
  ];
  //xurrent page index
  int currentSelect = 1;

  @override
  Widget build(BuildContext context) {
    int itemCount = categoryList.length;
    return Container(
      height: 52,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                //print('tapped');
                setState(() {
                  currentSelect = index;
                });
              },
              child: Container(
                //padding: EdgeInsets.all(3.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: currentSelect == index
                          ? Colors.red
                          : Colors.transparent,
                      width: 3.0,
                    ),
                  ),
                ),
                child: Text(
                  categoryList[index],
                  style: TextStyle(
                    fontSize: 20,
                    color: currentSelect == index ? Colors.red : Colors.black,
                    fontWeight: currentSelect == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (_, index) {
            return SizedBox(
              width: 11,
            );
          },
          itemCount: itemCount),
    );
  }
}

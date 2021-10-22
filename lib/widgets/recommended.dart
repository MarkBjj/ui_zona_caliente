import 'package:flutter/material.dart';
import 'package:ui_zona_caliente/model/girl_model.dart';
import 'package:ui_zona_caliente/screens/detail.dart';

class Recommended extends StatelessWidget {
  final recommendedList = Girl.generateRecommended();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: recommendedList.length,
        separatorBuilder: (_, index) {
          return const SizedBox(
            width: 12.0,
          );
        },
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DetailScreen(girl: recommendedList[index]),
              ),
            );
          },
          child: Container(
            height: 240,
            width: 200,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Stack(
              children: [
                Image.asset(
                  recommendedList[index].image,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  right: 11.0,
                  top: 11.0,
                  child: Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                  ),
                ),
                Positioned(
                  bottom: 19,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.white54,
                    padding: EdgeInsets.all(9.0),
                    child: Row(
                      children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recommendedList[index].name,
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              recommendedList[index].nationality,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 13),
                            ),
                            const Icon(
                              Icons.check_box_rounded,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

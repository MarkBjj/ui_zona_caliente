import 'package:flutter/material.dart';
import 'package:ui_zona_caliente/model/girl_model.dart';

class GirlContentInfo extends StatelessWidget {
  final Girl girl;
  const GirlContentInfo({Key? key, required this.girl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2.0),
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          children: [
            Row(
              children: const [
                MenuWidgets(
                    imgUrl: 'lib/assets/icons/icons1.png',
                    textContent:
                        '1 lil piggy\n went to market\n 1 stayed home'),
                SizedBox(
                  width: 24,
                ),
                MenuWidgets(
                    imgUrl: 'lib/assets/icons/icons2.png',
                    textContent: 'Award winning \n THOT'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                MenuWidgets(
                    imgUrl: 'lib/assets/icons/icons3.png',
                    textContent: 'This girl has\n 47 stalkers'),
                SizedBox(
                  width: 24,
                ),
                MenuWidgets(
                    imgUrl: 'lib/assets/icons/icons4.png',
                    textContent: 'She has 22 coffee \n selfies'),
              ],
            ),
          ],
        ));
  }
}

class MenuWidgets extends StatelessWidget {
  final String imgUrl;
  //lib/assets/icons/icons1.png
  final String textContent;
  const MenuWidgets({Key? key, required this.imgUrl, required this.textContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //this expanded wdiget makes the row take up the full available space
        child: Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.s,
        children: [
          //Image.asset('lib/assets/icons/icons1.png'),
          Image.asset(
            imgUrl,
            height: 40.0,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            textContent,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          // Text(
          //   'Second Text',
          //   style: Theme.of(context).textTheme.bodyText1,
          // ),
        ],
      ),
    ));
  }
}

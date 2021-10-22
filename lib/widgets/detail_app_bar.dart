import 'package:flutter/material.dart';
import 'package:ui_zona_caliente/model/girl_model.dart';

class DetailAppBar extends StatelessWidget {
  final Girl girl;
  //const DetailAppBar({Key? key, required Girl girl}) : super(key: key);
  const DetailAppBar({Key? key, required this.girl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      child: Stack(
        children: [
          //path from passed girl object
          Image.asset(
            //'lib/assets/images/horizontalMirella.jpg',
            girl.image,
            fit: BoxFit.cover,
            //this parameter will fill height of container
            height: double.infinity,
          ),
          SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  print('back pushed');
                },
                child: Container(
                  height: 22,
                  width: 22,
                  margin: const EdgeInsets.only(left: 15.0),
                  padding: const EdgeInsets.all(3.0),
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  //Navigator.pop(context);
                  print('FAV pushed');
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 25.0),
                  height: 22,
                  width: 22,
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          )),
          const Text('detail appbar:'),
        ],
      ),
    );
  }
}

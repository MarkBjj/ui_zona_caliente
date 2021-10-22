import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_zona_caliente/model/girl_model.dart';

class DetailContent extends StatelessWidget {
  final Girl girl;
  const DetailContent({Key? key, required this.girl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            girl.name,
            style:
                Theme.of(context).textTheme.headline1!.copyWith(fontSize: 24),
          ),
          Text(
            girl.nationality,
            style:
                Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
          ),
          Text(
            girl.instagram,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$19999',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ' (financing available) Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

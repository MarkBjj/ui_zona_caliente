import 'package:flutter/material.dart';
import 'package:ui_zona_caliente/model/girl_model.dart';
import 'package:ui_zona_caliente/screens/detail.dart';

class BestOffer extends StatelessWidget {
  final listBestOffer = Girl.generateBestOf();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Best Offer',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'View All',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          //list of best offer
          ...listBestOffer
              .map(
                (ei) => Container(
                  margin: const EdgeInsets.only(bottom: 19.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11.0),
                  ),
                  child: Stack(children: [
                    Row(
                      children: [
                        GestureDetector(
                          //onTap: () {},
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(girl: ei)),
                          ),
                          child: Container(
                            width: 150,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              image: DecorationImage(
                                image: AssetImage(ei.image),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(11.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ei.name + ' Age: ' + ei.age.toString(),
                              // notice the bodyText1!.copyWith() for nullsafety
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'instagram',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Positioned(
                      right: 0,
                      top: 0,
                      child: Icon(Icons.local_activity, color: Colors.red),
                    ),
                  ]),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_zona_caliente/model/girl_model.dart';
import 'package:ui_zona_caliente/widgets/detail_app_bar.dart';
import 'package:ui_zona_caliente/widgets/detail_content.dart';
import 'package:ui_zona_caliente/widgets/girl_content_info.dart';

class DetailScreen extends StatelessWidget {
  final Girl girl;
  //const DetailScreen({Key? key, required this.girl}) : super(key: key);
  const DetailScreen({Key? key, required this.girl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      //appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //pass object girl to widget
            DetailAppBar(girl: girl),
            const SizedBox(
              height: 10.0,
            ),
            DetailContent(girl: girl),
            GirlContentInfo(girl: girl),
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 17.0, vertical: 7.0),
              child: Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Book this Girl'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      primary: Colors.blueAccent),
                ),
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

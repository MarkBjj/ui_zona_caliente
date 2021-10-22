import 'package:flutter/material.dart';
import 'package:ui_zona_caliente/widgets/categories.dart';
import 'package:ui_zona_caliente/widgets/custom_appbar.dart';
import 'package:ui_zona_caliente/widgets/best_offer.dart';
import 'package:ui_zona_caliente/widgets/custom_bottom_navigation.dart';
import 'package:ui_zona_caliente/widgets/recommended.dart';
import 'package:ui_zona_caliente/widgets/search_input.dart';
import 'package:ui_zona_caliente/widgets/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).backgroundColor,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            CategoryMenu(),
            //horizontal scroll
            Recommended(),
            BestOffer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: use_key_in_widget_constructors
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 12, 20, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            const Text(
              'Zona Caliente',
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            const CircleAvatar(
              backgroundImage:
                  AssetImage('lib/assets/images/chinaskiAvatar.jpg'),
              radius: 25.0,
            ),
            // Image.asset(
            //   'lib/assets/images/QimmahRusso1.jpg',
            //   height: 50,
            //   width: 30,
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}

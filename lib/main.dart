import 'package:flutter/material.dart';
import 'package:ui_zona_caliente/screens/home.dart';

//https://www.youtube.com/watch?v=-V8LFrbQdFY&ab_channel=FullstackSchool
//material_design_icons_flutter 5.0.6295
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zona Caliente',
      theme: ThemeData(
        primarySwatch: Colors.red,
        backgroundColor: Colors.white24,
        // use copyWith() to alter the set theme text style
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
            fontSize: 15,
            color: Colors.black54,
          ),
        ),
      ),
      home: HomeScreen(),
      //home: const MyHomePage(title: 'Flutter Zona Caliente'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

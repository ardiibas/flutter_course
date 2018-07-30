import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import './pages/home.dart';

main() {
  /*
  debugPaintSizeEnabled = true; // show margin dkk (Base on rendering)
  debugPaintBaselinesEnabled = true; // show gravity (Base on rendering)
  debugPaintPointersEnabled = true; // show item yang di klik (Base on rendering)
  */

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // debugShowMaterialGrid: true, // show grid (Base on material)
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurpleAccent),
      home: HomePage(),
    );
  }
}

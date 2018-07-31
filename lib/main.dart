import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import './pages/auth.dart';
import './pages/home.dart';
import './pages/manage_product.dart';
import './pages/product_detail.dart';

main() {
  /*
  debugPaintSizeEnabled = true; // show margin dkk (Base on rendering)
  debugPaintBaselinesEnabled = true; // show gravity (Base on rendering)
  debugPaintPointersEnabled = true; // show item yang di klik (Base on rendering)
  */

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
    print(_products);
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // debugShowMaterialGrid: true, // show grid (Base on material)
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) =>
            HomePage(_products, _addProduct, _deleteProduct),
        '/admin': (BuildContext context) => ManageProduct(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProductDetail(
                _products[index]['title'], _products[index]['image']),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                HomePage(_products, _addProduct, _deleteProduct));
      },
    );
  }
}

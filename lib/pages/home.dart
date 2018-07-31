import 'package:flutter/material.dart';

import '../product_manager.dart';
import './manage_product.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(
              title: Text("Manage Product"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ManageProduct()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Flutter Course"),
      ),
      body: ProductManager(),
    );
  }
}

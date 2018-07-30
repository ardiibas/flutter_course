import 'package:flutter/material.dart';

import './home.dart';

class Pertamax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Pertamax"),
      ),
      body: Center(
        child: Text("Pertamax gan!"),
      ),
    );
  }
}

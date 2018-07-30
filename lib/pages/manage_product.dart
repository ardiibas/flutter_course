import 'package:flutter/material.dart';

import './home.dart';
import './product_create.dart';
import './product_list.dart';

class ManageProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          title: Text("Manage Product"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                // icon: Icon(Icons.create),
                text: "Create Product",
              ),
              Tab(
                // icon: Icon(Icons.list),
                text: "My Products",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[CreateProduct(), ListProduct()],
        ),
      ),
    );
  }
}

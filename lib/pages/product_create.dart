import 'package:flutter/material.dart';

class CreateProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        child: Text("Show Modul"),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Center(
                  child: Text("Hai sayang!"),
                );
              });
        },
      ),
    );
  }
}

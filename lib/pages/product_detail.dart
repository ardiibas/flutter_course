import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductDetail(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Product"),
      ),
      body: BodyDetail(imageUrl, title),
    );
  }
}

class BodyDetail extends StatelessWidget {
  final String _image;
  final String _title;

  BodyDetail(this._image, this._title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        Image.asset(_image),
        Container(
          padding: EdgeInsets.all(8.0),
          child: Text(_title),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          child: RaisedButton(
            color: Colors.indigo[50],
            child: Text("Delete"),
            onPressed: () => Navigator.pop(context, true),
          ),
        )
      ],
    );
  }
}

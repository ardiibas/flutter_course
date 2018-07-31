import 'package:flutter/material.dart';

class CreateProduct extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CreateProductState();
  }
}

class _CreateProductState extends State<CreateProduct> {
  String titleValue;
  String descriptionValue;
  double priceValue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: "Product Title",
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(4.0))),
            ),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Product Description",
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(4.0))),
            ),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Product Price",
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(4.0))),
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
          ),
        ],
      ),
    );
  }
}

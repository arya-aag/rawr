import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imagePath;

  ProductPage(this.title, this.imagePath);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
          Text(title),
          RaisedButton(
              child: Text('Return to Home'),
              onPressed: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}

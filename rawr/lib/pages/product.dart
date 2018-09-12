import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imagePath;

  ProductPage(this.title, this.imagePath);

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, 0);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imagePath),
            Text(title),
            RaisedButton(
              child: Text('Delete'),
              color: Colors.redAccent,
              onPressed: () => Navigator.pop(context, 1),
            ),
          ],
        ),
      ),
    );
  }
}

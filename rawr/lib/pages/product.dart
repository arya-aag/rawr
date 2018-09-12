import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text('Dummy details'),
          RaisedButton(
              child: Text('Return to Home'),
              onPressed: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}

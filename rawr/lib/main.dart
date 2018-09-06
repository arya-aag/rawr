import 'package:flutter/material.dart';

import './product_manager.dart';

void main(List<String> args) => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple, accentColor: Colors.amberAccent),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Rawr'),
          ),
          body: ProductManager(['First Product'])),
    );
  }
}

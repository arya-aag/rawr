import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rawr'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Awesomeness');
                  });
                },
                child: Text('Add Product'),
              ),
            ),
            Column(
              children: _products
                  .map(
                    (element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/food.jpg'),
                              Text(element)
                            ],
                          ),
                        ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

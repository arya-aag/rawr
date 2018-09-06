import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final List<String> initialProducts;

  ProductManager({this.initialProducts = const ['Default product']}) {
    // print('ProductManagerWidget constr');
  }

  @override
  State<StatefulWidget> createState() {
    // print('ProductManagerWidget createState');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products;

  @override
  void initState() {
    super.initState();
    // print('ProductManagerWidget initState');
    _products = widget.initialProducts;
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    // print('ProductManagerWidget didUpdateWidget');
  }

  @override
  Widget build(BuildContext context) {
    // print('ProductManagerWidget build');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: MaterialButton(
            color: Theme.of(context).accentColor,
            onPressed: () {
              setState(() {
                _products.add('Advanced Awesomeness');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}

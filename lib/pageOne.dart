import 'package:flutter/material.dart';

class PageOne extends MaterialPageRoute {
  PageOne()
      : super(
          builder: (context) => Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              title: Text('PageOne'),
            ),
            body: Container(
              child: RaisedButton(
                onPressed: () {Navigator.pop(context);},
              ),
            ),
          ),
        );
}

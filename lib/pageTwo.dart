import 'package:flutter/material.dart';

class PageTwo extends MaterialPageRoute {
  PageTwo()
      : super(
          builder: (context) => Scaffold(
            backgroundColor: Colors.green,
            appBar: AppBar(
              title: Text('PageTwo'),
            ),
            body: Container(
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        );
}

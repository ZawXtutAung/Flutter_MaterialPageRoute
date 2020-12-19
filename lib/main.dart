import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_flutter_test/pageOne.dart';
import 'package:hello_flutter_test/pageTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: MainMenu(
                    name: 'page1',
                    colors: Colors.blue,
                    page: PageTwo(),
                  ),
                ),
                Expanded(
                  child: MainMenu(
                    name: 'page2',
                    colors: Colors.green,
                    page: PageOne(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  final String name;
  final Color colors;
  final page;
  const MainMenu({Key key, this.name, this.page, this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, page);
      },
      child: Container(
        alignment: Alignment.center,
        height: 100,
        color: colors,
        child: Text(name),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Parker Setup Route',
      theme: new ThemeData(primaryColor: Colors.orange),
      home: new ParkerBundle(),
    );
  }
}

class ParkerBundle extends StatefulWidget {
  @override
  createState() => new ParkerPage();
}

class ParkerPage extends State<ParkerBundle> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Parker Favor'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.map), onPressed: _parkerFavor,),
        ],
      ),
      body: new Text('My Body'),
    );
  }

  void _parkerFavor() {
    Navigator.of(context).push(
        new MaterialPageRoute(builder: (context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Parker Favor'),
            ),
            body: new Text('Parker Favor'),
          );
        })
    );
  }
}

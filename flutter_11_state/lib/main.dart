import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'State',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('State'),
        ),
        body: new Center(
          child: new TapBoxA(),
        ),
      ),
    );
  }
}

class TapBoxA extends StatefulWidget {
  TapBoxA({Key key}) : super(key: key);

  @override
  _TabBoxAState createState() => new _TabBoxAState();
}

class _TabBoxAState extends State<TapBoxA> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.green[600],
        ),
      ),
    );
  }

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }
}

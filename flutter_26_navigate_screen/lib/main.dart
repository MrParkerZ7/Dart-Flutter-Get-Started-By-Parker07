import 'package:flutter/material.dart';

// Navigate use to go to new page or pop back

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text('Launch new screen'),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new SecondScreen()),
              );
            }),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text('Go Back'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}

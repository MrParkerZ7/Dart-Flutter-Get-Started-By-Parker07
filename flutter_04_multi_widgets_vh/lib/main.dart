import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  createState() => new _MyHomePageState();
}

// Vertically
class _MyHomePageState extends State<MyHomePage> {
  num paddingTop = 10.0;

  @override
  Widget build(BuildContext context) {
    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );

    var elDefaultStyle = new Center(child: DefaultTextStyle.merge(
        style: descTextStyle,
        child: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new Column(
                children: [
                  new Icon(Icons.kitchen, color: Colors.green[500],),
                  new Text('PREP:'),
                  new Text('25 min'),
                ],
              ),
              new Column(
                children: [
                  new Icon(Icons.timer, color: Colors.green[500],),
                  new Text('COOK:'),
                  new Text('1 hr'),
                ],
              ),
              new Column(
                children: [
                  new Icon(Icons.restaurant, color: Colors.green[500],),
                  new Text('FEEDS:'),
                  new Text('4-6'),
                ],
              ),
            ],
          ),
        )),);

    var elNestingRowAndColumns = new Center(child: new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              new Icon(Icons.star, color: Colors.black,),
              new Icon(Icons.star, color: Colors.black,),
              new Icon(Icons.star, color: Colors.black,),
              new Icon(Icons.star, color: Colors.black,),
              new Icon(Icons.star, color: Colors.black,),
            ],
          ),
          new Text('170 Reviews', style: new TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20.0,
          ),),
        ],
      ),
    ),);

    var elPackingWidgets = new Center(
      child: new Row(mainAxisSize: MainAxisSize.min, children: [
        new Icon(Icons.star, color: Colors.green[500],),
        new Icon(Icons.star, color: Colors.green[500],),
        new Icon(Icons.star, color: Colors.green[500],),
        new Icon(Icons.star, color: Colors.black,),
        new Icon(Icons.star, color: Colors.black,),
      ],),);

    var elSizingWidgets = new Center(
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          new Expanded(child: new Image.asset('images/pic1.jpg')),
          new Expanded(
              flex: 10, child: new Image.asset('images/pic2.jpg')),
          new Expanded(child: new Image.asset('images/pic3.jpg')),
        ],
      ),
    );

    var elVartically = new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new Image.asset('images/pic1.jpg'),
          new Image.asset('images/pic2.jpg'),
          new Image.asset('images/pic3.jpg'),
        ],
      ),
    );

    var elHorizontally = new Center(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new Image.asset('images/pic1.jpg'),
          new Image.asset('images/pic2.jpg'),
          new Image.asset('images/pic3.jpg'),
        ],
      ),
    );

    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new ListView(
          children: [
            elNestingRowAndColumns,
            elDefaultStyle,
            elPackingWidgets,
            elSizingWidgets,
            elVartically,
            elHorizontally,
          ],
        ));
  }
}

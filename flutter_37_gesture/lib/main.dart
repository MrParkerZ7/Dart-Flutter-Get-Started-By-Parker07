import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gestures',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyAppPage(),
    );
  }


}

class MyAppPage extends StatefulWidget {

  @override
  _TapBoxCState createState() => new _TapBoxCState();

}

class _TapBoxCState extends State<MyAppPage> {
  String btnStatus = 'State';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Gestures Demo'),
      ),
      body: new Center(
        child: new GestureDetector(
          child: new Text(
            btnStatus,
            style: new TextStyle(fontSize: 32.0, color: Colors.grey,),
          ),
//          onTap: _onTap,
          onTapDown: _onTapDown,
          onTapUp: _onTapUp,
          onTapCancel: _onTapCancel,
          onDoubleTap: _onDoubleTap,
          onLongPress: _onLongPress,
        ),
      ),
    );
  }

  void _onTap() {
    btnStatus = 'onTap';
  }

  void _onTapDown(TapDownDetails details) {
    setState(() {
      btnStatus = 'onTapDown';
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      btnStatus = 'onTapUp';
    });
  }

  void _onTapCancel() {
    setState(() {
      btnStatus = 'onCancel';
    });
  }

  void _onDoubleTap() {
    setState(() {
      btnStatus = 'onDoubleTap';
    });
  }

  void _onLongPress() {
    setState(() {
      btnStatus = 'onLongPress';
    });
  }
}
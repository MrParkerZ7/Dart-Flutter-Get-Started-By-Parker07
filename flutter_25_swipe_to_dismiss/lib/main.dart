import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Dismissing Items';
  final List<String> items =
      new List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (content, index) {
              final item = items[index];

              return new Dismissible(
                  key: new Key(item),
                  onDismissed: (direction) {
                    items.removeAt(index);
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text("$item dismissed")));
                  },
                  background: new Container(
                    color: Colors.red,
                    child: new ListTile(
                      title: new Text('$item'),
                    ),
                  ),
                  child: new ListTile(
                    title: new Text('$item'),
                  ));
            }),
      ),
    );
  }
}

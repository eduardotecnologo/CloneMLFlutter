import 'package:flutter/material.dart';

void main() => runApp(WidgetsApp());

class WidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets App'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          // child: Text('Widgets App')
          child: Column(
            children: <Widget>[
              Text('Widgets Example'),
              TextField(),
              Text(
                'Example 2',
                style: TextStyle(color: Colors.deepPurple),
              ),
              RaisedButton(
                onPressed:(){},
                child: Text('Salvar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

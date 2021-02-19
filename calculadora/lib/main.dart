import 'package:flutter/material.dart';
void main() => runApp(CalcApp());

class CalcApp extends StatefulWidget {
  CalcApp({Key key}) : super(key: key);

  _CalcAppState createState() => _CalcAppState();

}

class _CalcAppState extends State<CalcApp> {
  @override
  Widget build(BuildContext context) {

    TextField num1 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.red),
      decoration: InputDecoration(
        labelText: 'Número 1',
        labelStyle: TextStyle(
          color: Colors.red
          ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width:2.0)
          ),
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width:2.0)
          ),
        ),
      );

    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.red),
      decoration: InputDecoration(
        labelText: 'Número 2',
        labelStyle: TextStyle(
          color: Colors.red
          ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width:2.0)
          ),
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width:2.0)
          ),
        ),
      );

    RaisedButton button = RaisedButton(
      onPressed: (){},
      color: Colors.red,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0)
      ),
      child: Text('Calcular'),
    );

    Padding separator = Padding(
      padding: EdgeInsets.all(10.0),
    );

    Column columns = Column(
      children: <Widget>[
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          child: button,
          width: double.infinity,
        ),
      ],
    );
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.red
        ),
        body: Padding(
          padding: EdgeInsets.all(14.0),
          child: columns,
        ),
      ),
    );
  }
}
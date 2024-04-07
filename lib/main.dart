import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _value = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('App 802')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btnMinus(),
              Text(
                '  $_value  ',
                textScaleFactor: 1.5,
              ),
              btnPlus()
            ],
          ),
        ),
      );
  Widget btnMinus() => OutlinedButton(
        onPressed: () {
          if (_value > 0) {
            setState(() {
              _value -= 1;
            });
          }
        },
        child: Text(
          ' - ',
          style: TextStyle(fontSize: 30),
        ),
        style: OutlinedButton.styleFrom(
            side: BorderSide(
                color: Colors.black26, width: 1.2, style: BorderStyle.solid),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      );
  Widget btnPlus() => OutlinedButton(
        onPressed: () => setState(() => _value += 1),
        child: Text(
          ' + ',
          style: TextStyle(fontSize: 25),
        ),
        style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: Colors.black26,
              width: 1.2,
              style: BorderStyle.solid,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      );
}
 
import 'package:flutter/material.dart';
import 'homePage.dart'; //BUANG LA NOH
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new HomePage(),//BUANG LA NOH
    );
}}
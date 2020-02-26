import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, num3 = 0, num4 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");
  final TextEditingController k1 = new TextEditingController(text: "");
  final TextEditingController k2 = new TextEditingController(text: "");


// CALCULATIONS
  void doAddition() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      num3 = double.parse(k1.text);
      num4 = double.parse(k2.text);
      sum = ((num1/num2) + (num3/num4));
      
    });
  }

  void doSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      num3 = double.parse(k1.text);
      num4 = double.parse(k2.text);
      sum = ((num1/num2) - (num3/num4));
    });
  }

  void doMul() {
    setState(() {
       num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      num3 = double.parse(k1.text);
      num4 = double.parse(k2.text);
      sum = ((num1/num2) * (num3/num4));
    });
  }

  void doDiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      num3 = double.parse(k1.text);
      num4 = double.parse(k2.text);
      sum = ((num1/num2) / (num3/num4));
    });
  }

  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
      k1.text = "";
      k2.text = "";
      sum = 0;
    });
  }

//BODY
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Fraction Calculator"),
        backgroundColor: Colors.purple[300], 
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "ANS : $sum",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
                  ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter YOUR NUMERATOR OF FRACTION 1"),
              controller: t1,
            ),

      
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter YOUR DENOMINATOR OF FRACTION 1"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 15.0),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter NUMERATOR OF FRACTION 2"),
              controller: k1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter DENOMINATOR OF FRACTION 2"),
              controller: k2,
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.blue[300],
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.blue[300],
                  onPressed: doSub,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.blue[300],
                  onPressed: doMul,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.blue[300],
                  onPressed: doDiv,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.blue[300],
                  onPressed: doClear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
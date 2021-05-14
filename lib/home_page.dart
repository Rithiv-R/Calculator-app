import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var n1 = 0, n2 = 0;
  var val = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  @override
  void adddition() {
    n1 = int.parse(t1.text);
    n2 = int.parse(t2.text);
    setState(() {
      val = n1 + n2;
    });
    ;
  }

  void subraction() {
    n1 = int.parse(t1.text);
    n2 = int.parse(t2.text);
    setState(() {
      val = n1 - n2;
    });
    ;
  }

  void multiplication() {
    n1 = int.parse(t1.text);
    n2 = int.parse(t2.text);
    setState(() {
      val = n1 * n2;
    });
    ;
  }

  void division() {
    n1 = int.parse(t1.text);
    n2 = int.parse(t2.text);
    setState(() {
      val = n1 ~/ n2;
    });
    ;
  }

  void clear() {
    setState(() {
      n1 = 0;
      n2 = 0;
      t1.text = "0";
      t2.text = "0";
      val = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: Text("Calculator"),
        ),
        body: new Container(
            padding: const EdgeInsets.all(50.0),
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  new Text(
                    "OUTPUT: $val ",
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  ),
                  new Padding(padding: EdgeInsets.all(20.0)),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter number1"),
                    controller: t1,
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter number2"),
                    controller: t2,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 20.0)),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RaisedButton(
                          child: new Text("+"),
                          color: Colors.orangeAccent,
                          onPressed: adddition,
                        ),
                        new Padding(padding: EdgeInsets.only(right: 20.0)),
                        new RaisedButton(
                            child: new Text("-"),
                            color: Colors.orangeAccent,
                            onPressed: subraction),
                      ]),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RaisedButton(
                          child: new Text("*"),
                          color: Colors.orangeAccent,
                          onPressed: multiplication,
                        ),
                        new Padding(padding: EdgeInsets.only(right: 20.0)),
                        new RaisedButton(
                            child: new Text("/"),
                            color: Colors.orangeAccent,
                            onPressed: division),
                      ]),
                  new Padding(padding: EdgeInsets.only(top: 20.0)),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new MaterialButton(
                            child: new Text("RESET"),
                            color: Colors.orangeAccent,
                            onPressed: clear)
                      ])
                ]))));
  }
}

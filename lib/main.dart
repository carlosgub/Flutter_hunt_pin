import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  Page({Key key}) : super(key: key);


  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              GestureDetector(onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: new Text("Hansy Hunt"),
                      actions: <Widget>[
                        new FlatButton(onPressed: (){Navigator.of(context).pop();}, child: new Text("Salir"))
                      ],
                    );
                  },
                );
              }),
              Center(
                child: Container(
                  child: RaisedButton(
                    child: Text('No me puedes hacer click!'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

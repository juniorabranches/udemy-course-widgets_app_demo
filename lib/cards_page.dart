import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => new _CardsPageState();
}



class _CardsPageState extends State<CardsPage>{


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Cards Page'),
          backgroundColor: Colors.red,
        ),
        body: new ListView(
          
        )
    );
  }
}
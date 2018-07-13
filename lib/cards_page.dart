import 'package:flutter/material.dart';


class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => new _CardsPageState();
}


class _CardsPageState extends State<CardsPage>{

  ShapeBorder _shape;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Cards Page'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.sentiment_very_satisfied),
              onPressed: (){
                setState(() {
                  _shape = _shape != null ? null : const RoundedRectangleBorder(
                    borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(16.0),
                        topRight: const Radius.circular(16.0),
                        bottomLeft: const Radius.circular(2.0),
                        bottomRight: const Radius.circular(2.0)
                    ),
                  );
                });
              },
            )
          ],
        ),
        body: new ListView(

        )
    );
  }
}
import 'package:flutter/material.dart';

class CardViagem{
  const CardViagem({
    this.titulo,
    this.descricao
  });

  final String titulo;
  final List<String> descricao;
}

final List<CardViagem> destinos = <CardViagem>[
  const CardViagem(
    titulo: 'Rio de Janeiro',
    descricao: const <String>[
      'Pão de Açucar',
      'Cristo Redentor',
      'Maracanã'
    ],
  ),
  const CardViagem(
    titulo: 'São Paulo',
    descricao: const <String>[
      'Av. Paulista',
      'Morumbi',
      'Mercadão'
    ]
  ),
  const CardViagem(
    titulo: 'Cuiabá',
    descricao: const <String>[
      'Orla do Porto',
      'Prainha',
      'Chapada dos Guimarães'
    ]
  )
];


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
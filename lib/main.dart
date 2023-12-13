import 'package:flutter/material.dart';

main() => runApp(new testeApp());

class testeApp extends StatelessWidget {
  final List<String> perguntas = [
    'Qual a sua cor favorita?',
    'Qual o seu animal favorito?'
  ];
  void responder () {
    print('pergunta resposndida!!!');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('perguntas'),
          ),
          body: Column(children: [
            Text(perguntas.elementAt(0)),
            RaisedButton(child: Text('Resposta 1'), onPressed: responder),
            RaisedButton(child: Text('Resposta 2'), onPressed: () {
              print('respindeu 2');
            }),
            RaisedButton(child: Text('Resposta 3'), onPressed: () => {
              print('pressionou 3')
            })
          ])),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';

main() => runApp(PerguntaApp());
final List<String> perguntas = [
  'Qual a sua cor favorita?',
  'Qual o seu animal favorito?'
];

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('perguntas'),
          ),
          body: Column(children: [
            Questao(perguntas.elementAt(_perguntaSelecionada)),
            Resposta('reposta 1', _responder),
            Resposta('reposta 2', _responder),
            Resposta('reposta 3', _responder),
          ])),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}

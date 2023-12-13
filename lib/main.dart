import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';

main() => runApp(PerguntaApp());
final List<Map<String, Object>> perguntas = [
  {
    'texto': 'Qual a sua cor favorita?',
    'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
  },
  {
    'texto': 'Qual a seu animal favorito?',
    'respostas': ['Cobra', 'Elefante', 'Cobra', 'Leão']
  },
  {
    'texto': 'Qual a seu instrutor favorito?',
    'respostas': ['Maria', 'João', 'Leo', 'Pedro']
  }
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
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
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

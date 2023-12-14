import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';

main() => runApp(PerguntaApp());



class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }
 

  @override
  Widget build(BuildContext context) {
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

List<Widget> respostas = [];
for (String textoResp in perguntas[_perguntaSelecionada]['respostas'] as List<String>) {
  respostas.add(Resposta(textoResp, _responder));
}

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('perguntas'),
          ),
          body: Column(children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas
          ])),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

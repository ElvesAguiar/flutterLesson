import 'package:flutter/material.dart';

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
    
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('perguntas'),
          ),
          body: Column(children: [
            Text(perguntas.elementAt(_perguntaSelecionada)),
            RaisedButton(child: Text('Resposta 1'), onPressed: _responder),
            RaisedButton(child: Text('Resposta 2'), onPressed: _responder),
            RaisedButton(child: Text('Resposta 3'), onPressed: _responder)
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

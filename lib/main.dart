import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());
final List<String> perguntas = [
  'Qual a sua cor favorita?',
  'Qual o seu animal favorito?'
];

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
    perguntaSelecionada++;  
    });
    
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('perguntas'),
          ),
          body: Column(children: [
            Text(perguntas.elementAt(perguntaSelecionada)),
            RaisedButton(child: Text('Resposta 1'), onPressed: responder),
            RaisedButton(child: Text('Resposta 2'), onPressed: responder),
            RaisedButton(child: Text('Resposta 3'), onPressed: responder)
          ])),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return new PerguntaAppState();
  }
}

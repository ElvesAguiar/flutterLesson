import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';

import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaototal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 5},
        {'texto': 'Vermelho', 'pontuacao': 3},
        {'texto': 'Verde', 'pontuacao': 2},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 2},
        {'texto': 'Cobra', 'pontuacao': 1},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Dentre esses, Qual é o seu filme favorito?',
      'respostas': [
        {'texto': 'Vingadores: Ultimato', 'pontuacao': 3},
        {'texto': 'O Poderoso Chefão', 'pontuacao': 1},
        {'texto': 'O Rei Leão', 'pontuacao': 5},
        {'texto': 'O Senhor dos Anéis - O Retorno do Rei', 'pontuacao': 4},
      ],
    },
    {
      'texto': 'Qual é o seu esporte favorito?',
      'respostas': [
        {'texto': 'Futebol', 'pontuacao': 4},
        {'texto': 'Basquete', 'pontuacao': 3},
        {'texto': 'Tênis', 'pontuacao': 2},
        {'texto': 'Vôlei', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é a sua bebida preferida?',
      'respostas': [
        {'texto': 'Água', 'pontuacao': 1},
        {'texto': 'Suco', 'pontuacao': 2},
        {'texto': 'Refrigerante', 'pontuacao': 3},
        {'texto': 'Café', 'pontuacao': 4},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaototal += pontuacao;
      });
    }
    print(_pontuacaototal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaototal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaototal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

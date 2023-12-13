

import 'package:flutter/material.dart';

main() =>  runApp(new testeApp());


class testeApp extends StatelessWidget{
  @override
  Widget build( BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('perguntas'),
          
        ),
        body: Text('Ola flutter'),
      ),
    );
  }
}
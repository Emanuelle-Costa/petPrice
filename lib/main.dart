import 'package:flutter/material.dart';
import 'primeira_tela.dart';

main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraTela(),
    );
  }
}

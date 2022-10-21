import 'package:flutter/material.dart';
import 'package:projeto/segunda_tela.dart';


class PrimeiraTela extends StatefulWidget {
  const PrimeiraTela({super.key});

  @override
  State<PrimeiraTela> createState() => _PrimeiraTelaState();
}

class _PrimeiraTelaState extends State<PrimeiraTela> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
            primarySwatch: Colors.green,
      ) ,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(126, 214, 88, 1.0),
        appBar: AppBar(
        title: Text("Pet Price"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             IconButton(
                    icon: Image.asset("images/pet_price.jpg"),
                    iconSize: 250,
                    onPressed: () {
                      Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) {
                          return SegundaTela();
                        }
                      ),
                    );
                    },
                  )
            ],
          ),
        ),
      )
      ),
      );
  }
}
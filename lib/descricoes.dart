import 'package:flutter/material.dart';

class Descricao extends StatefulWidget {
  const Descricao({super.key});

  @override
  State<Descricao> createState() => _DescricaoState();
}

class _DescricaoState extends State<Descricao> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
       theme: ThemeData(
            primarySwatch: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 239, 205),
        appBar: AppBar(
        title: Text("Descrição"),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text("Ração X ", 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Text("\n\n- Coração forte e saudável: contém altos níveis de taurina que auxiliam na preservação da função cardíaca; \n- Suporte articular: contém condroitina e glicosamina que auxiliam na manutenção da saúde das articulações; \n- Saúde intestinal: através da combinação de ingredientes de alta digestibilidade, fibras especiais e prebiótico. \n\n- Este produto possui Satisfação Garantida. Saiba mais abaixo na descrição.")
          ]
        )
        )
      )
    );
  }
}
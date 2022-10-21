import 'package:flutter/material.dart';
import 'package:projeto/quarta_tela.dart';
import 'package:projeto/terceira_tela.dart';

class SegundaTela extends StatefulWidget {
  const SegundaTela({super.key});

  @override
  State<SegundaTela> createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  String? racao;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 239, 205),
        appBar: AppBar(
          title: Text("Busca"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [ 
              ClipRRect(
                child: 
                  Image.asset("images/pet_price.jpg", scale: 3,),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              ListTile(
                title: const Text('Rações Caninas'),
                leading: Radio(
                  value:  "Rações Caninas",
                  groupValue: racao, 
                  onChanged: (value){
                    setState(() {
                      racao = value.toString();
                    });
                  }
                  )
              ),
              ListTile(
                title: const Text('Rações Felinas'),
                leading: Radio(
                  value:  "Rações Felinas",
                  groupValue: racao, 
                  onChanged: (value){
                    setState(() {
                      racao = value.toString();
                    });
                  }
                  )
              ),
              ListTile(
                title: const Text('Acessórios'),
                leading: Radio(
                  value:  "Acessórios",
                  groupValue: racao, 
                  onChanged: (value){
                    setState(() {
                      racao = value.toString();
                    });
                  }
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) {
                            return QuartaTela();
                            }
                          ),
                        );
                    },
                    child: Text("Buscar"),
                  ),
                ],
              ),
                       
            ],
          )
          )
        )
    );
  }
}
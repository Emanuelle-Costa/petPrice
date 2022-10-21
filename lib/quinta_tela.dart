import 'package:flutter/material.dart';
import 'package:projeto/descricoes.dart';
import 'package:projeto/produto.dart';
import 'package:intl/intl.dart';

import 'acessorios_repository.dart';

class QuintaTela extends StatefulWidget {
  const QuintaTela({super.key});

  @override
  State<QuintaTela> createState() => _QuintaTelaState();
}

class _QuintaTelaState extends State<QuintaTela> {
  
  @override
  Widget build(BuildContext context) {
    final acessorio = AcessoriosRepository.acessorio;
    NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

    return MaterialApp(
      theme: ThemeData(
            primarySwatch: Colors.green,
      ) ,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 239, 205),
        appBar: AppBar(
        title: Text("Buscar Produto"),
      ),
      body:  
           ListView.separated(
            itemBuilder: (BuildContext context, int produto) {
              return ListTile(
                leading: Image.asset(acessorio[produto].imagem),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(acessorio[produto].nome, 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Vendedor: ${acessorio[produto].vendedor}"),
                    Text("Endereço: ${acessorio[produto].endereco}"),
                  ],
                ),
                trailing: Text(real.format(acessorio[produto].preco)),
                onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) {
                          return Descricao();
                        }
                      ),
                    );
                },
              );
            },
              padding: EdgeInsets.all(8),
              separatorBuilder: (_,__) => Divider(),
              itemCount: acessorio.length,
             
            ),
            
       
    ),
    );
    
  }

}




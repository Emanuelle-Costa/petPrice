import 'package:flutter/material.dart';
import 'package:projeto/descricoes.dart';
import 'package:projeto/produto.dart';
import 'package:projeto/produto_cat_repository.dart';


class QuartaTela extends StatefulWidget {
  const QuartaTela({super.key});

  @override
  State<QuartaTela> createState() => _QuartaTelaState();
}

class _QuartaTelaState extends State<QuartaTela> {
  
  @override
  Widget build(BuildContext context) {
    final cat = ProdutoDogRepository.cat;

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
                leading: Image.asset(cat[produto].imagem),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cat[produto].nome, 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Vendedor: ${cat[produto].vendedor}"),
                    Text("Endereço: ${cat[produto].endereco}"),
                  ],
                ),
                trailing: Text("${cat[produto].preco.toStringAsFixed(2)}"),
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
              itemCount: cat.length,
             
            ),
            
       
    ),
    );
    
  }

}



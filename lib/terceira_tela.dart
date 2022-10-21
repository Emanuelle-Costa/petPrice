import 'package:flutter/material.dart';
import 'package:projeto/descricoes.dart';
import 'package:projeto/produto.dart';
import 'package:projeto/produto_repository.dart';


class TerceiraTela extends StatefulWidget {
  const TerceiraTela({super.key});

  @override
  State<TerceiraTela> createState() => _TerceiraTelaState();
}

class _TerceiraTelaState extends State<TerceiraTela> {
  
  @override
  Widget build(BuildContext context) {
    final produtos = ProdutoRepository.produtos;

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
                leading: Image.asset(produtos[produto].imagem),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(produtos[produto].nome, 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Vendedor: ${produtos[produto].vendedor}"),
                    Text("Endereço: ${produtos[produto].endereco}"),
                  ],
                ),
                trailing: Text("${produtos[produto].preco.toStringAsFixed(2)}"),
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
              itemCount: produtos.length,
             
            ),
            
       
    ),
    );
    
  }

}




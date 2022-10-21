import 'package:flutter/material.dart';
import 'package:projeto/descricoes.dart';
import 'package:projeto/produto.dart';
import 'package:projeto/produto_dog_repository.dart';
import 'package:intl/intl.dart';


class TerceiraTela extends StatefulWidget {
  const TerceiraTela({super.key});

  @override
  State<TerceiraTela> createState() => _TerceiraTelaState();
}

class _TerceiraTelaState extends State<TerceiraTela> {
  
  @override
  Widget build(BuildContext context) {
    final dog = ProdutoDogRepository.dog;
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
                leading: Image.asset(dog[produto].imagem),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dog[produto].nome, 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Vendedor: ${dog[produto].vendedor}"),
                    Text("Endereço: ${dog[produto].endereco}"),
                  ],
                ),
                trailing: Text(real.format(dog[produto].preco)),
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
              itemCount: dog.length,
             
            ),
            
       
    ),
    );
    
  }

}




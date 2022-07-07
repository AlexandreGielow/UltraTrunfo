import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ultra_trunfo/classes/Baralho.dart';

class ListaBaralho extends StatefulWidget {
  const ListaBaralho({Key? key}) : super(key: key);

  @override
  _ListaBaralhoState createState() => _ListaBaralhoState();
}

class _ListaBaralhoState extends State<ListaBaralho> {

  List<Baralho> baralhos = [
    Baralho(id: 1, criadorId: 1, descricao: 'Carros Franceses',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
    Baralho(id: 1, criadorId: 1, descricao: 'Carros Alemães',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
    Baralho(id: 1, criadorId: 1, descricao: 'Carros Japoneses',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
    Baralho(id: 1, criadorId: 1, descricao: 'Tanques de Guerra',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
    Baralho(id: 1, criadorId: 1, descricao: 'Capitais da América do Sul',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
  ];

  Widget listaBaralhoTemplate(bar){
    return listaBaralhoTemp(baralho: bar,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text('Escolha o baralho desejado'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],

      ),
      body: Column(
        children: baralhos.map((bar) => listaBaralhoTemplate(bar)).toList(),
      ),
    );
  }
}

class listaBaralhoTemp extends StatelessWidget {

  final Baralho baralho;
  listaBaralhoTemp({required this.baralho});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              baralho.descricao,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[900],
              ),
            ),
            SizedBox(height: 8.0,),
            TextButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/baralho',arguments: {
                'id': baralho.id,
                'urlImagem': baralho.urlImagem,
                'descricao': baralho.descricao,
              });
            },
                icon: Icon(Icons.remove_red_eye_outlined),
                label: Text('Visualizar')),
          ],
        ),
      )
    );
  }
}

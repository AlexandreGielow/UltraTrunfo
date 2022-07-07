import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ultra_trunfo/classes/Baralho.dart';

class ListaCartas extends StatefulWidget {
  const ListaCartas({Key? key}) : super(key: key);

  @override
  _ListaCartasState createState() => _ListaCartasState();
}

class _ListaCartasState extends State<ListaCartas> {

  List<Baralho> baralhos = [
    Baralho(id: 1, criadorId: 1, descricao: 'Carros Franceses',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
    Baralho(id: 1, criadorId: 1, descricao: 'Carros Alemães',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
    Baralho(id: 1, criadorId: 1, descricao: 'Carros Japoneses',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
    Baralho(id: 1, criadorId: 1, descricao: 'Tanques de Guerra',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
    Baralho(id: 1, criadorId: 1, descricao: 'Capitais da América do Sul',preco: 25.0,subTipoId: 1, tipoId: 1,statusBaralho:1,urlImagem: 'http://xxxxx'),
  ];

  Widget listaCartaTemplate(bar){
    return listaCartaTemp(baralho: bar,);
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
        children: baralhos.map((bar) => listaCartaTemplate(bar)).toList(),
      ),
    );
  }
}

class listaCartaTemp extends StatelessWidget {

  final Baralho baralho;
  listaCartaTemp({required this.baralho});

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

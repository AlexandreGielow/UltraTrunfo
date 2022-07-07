import 'package:flutter/material.dart';
import 'package:ultra_trunfo/classes/Baralho.dart';



class telaBaralho extends StatefulWidget {
  const telaBaralho({required Key? key}) : super(key: key);

  @override
  _telaBaralhoState createState() => _telaBaralhoState();
}

class _telaBaralhoState extends State<telaBaralho> {

  Map b = {};

  @override
  Widget build(BuildContext context) {
    b = {"data": ModalRoute.of(context)!.settings.arguments};
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text(b['data']),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:[
            Card(
              child: Image.network('https://globalizado.com.br/wp-content/uploads/2019/06/gol_gti-735x400.jpg'),
            ),
            Card(clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Criador'),
                    subtitle: Text(
                      'Alexandre Gielow',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
            Card(clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Tipo'),
                    subtitle: Text(
                      'Carros',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
            Card(clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Subtipo'),
                    subtitle: Text(
                      'Esportivos',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),

            Card(clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Descricao'),
                    subtitle: Text(
                      'Um baralho muito foda pros vaguero de plantão',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
            Card(clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Status'),
                    subtitle: Text(
                      'Ativo',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: TextButton.icon(onPressed: (){
                Navigator.pushNamed(context, '/listaCartas',arguments: {
                  'id': b['data']['id'],
                });
              },
                  icon: Icon(Icons.remove_red_eye_outlined),
                  label: Text('Abrir cartas')),
            ),
          ],
        ),
      ),

    );
  }
}

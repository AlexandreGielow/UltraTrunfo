import 'package:flutter/material.dart';
import 'telas/home.dart';
import 'telas/loading.dart';
import 'telas/telaBaralho.dart';
import 'telas/listaBaralho.dart';
import 'telas/listaCartas.dart';
import 'telas/telaCarta.dart';
import 'telas/NavBar.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/home': (context) => Home(),
        '/baralho': (context) => telaBaralho(key: null,),
        '/ListaBaralho': (context) => ListaBaralho(),
        '/NavBar': (context) => NavBar(),
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(

        title: Text('SideBar'),
      ),
      body: Center(


      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


import 'package:flutter/material.dart';


class Carta extends StatefulWidget {
  const Carta({Key? key}) : super(key: key);

  @override
  _CartaState createState() => _CartaState();
}

class _CartaState extends State<Carta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
      ),
      body: Text('Telinha de cartas'),
    );
  }
}

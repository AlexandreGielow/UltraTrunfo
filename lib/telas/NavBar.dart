import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Alexandre Gielow'),
            accountEmail: Text('alex.gielow@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://scontent.fbnu4-1.fna.fbcdn.net/v/t1.6435-1/s200x200/74226641_10215284194474995_8600476030882283520_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=7206a8&_nc_eui2=AeHizZKP5OoUknxLr7BpyrSqrHWXpXCckRasdZelcJyRFidNPZlJnr-V7EAPCaZCq_w&_nc_ohc=ucCPv89hLnMAX83ANYK&tn=rlquVpIRJ2G6C9ZW&_nc_ht=scontent.fbnu4-1.fna&tp=7&oh=4a6159c03e02ab3a5004665eaddb78fc&oe=60E65D37',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://scontent.fbnu4-1.fna.fbcdn.net/v/t1.6435-9/52605928_10213666080623160_3536697687543906304_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=e3f864&_nc_eui2=AeHEiYyezCrTY9aMB2WH8-1My3I12SLWxJ7LcjXZItbEnnmPSVpw7WDGOzksdt7Ms4g&_nc_ohc=5EmpGh54DxoAX9klQFK&tn=rlquVpIRJ2G6C9ZW&_nc_ht=scontent.fbnu4-1.fna&oh=c923c5e78517d53bd87fb5eff553bd05&oe=60E72C3A')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.gamepad_outlined),
            title: Text('Jogar'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.storefront),
            title: Text('Loja de Baralhos'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.car_repair),
            title: Text('Meus Baralhos'),
            onTap: () {
              Navigator.pushNamed(context, '/ListaBaralho');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Amigos'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Compartilhar'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificações'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Sair'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
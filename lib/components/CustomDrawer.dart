import 'package:flutter/material.dart';

class CustomDrawer extends Drawer {
  CustomDrawer(BuildContext context)
      : super(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Sau Cesar"),
                accountEmail: Text("cesar@vc.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(''),
                  backgroundColor: Colors.white,
                  child: Text('S', style: TextStyle(fontSize: 30),),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text('Home'),
                subtitle: Text("Pagina inicial"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sair'),
                subtitle: Text('Encerrar sessão'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              )
            ],
          ),
        );
}

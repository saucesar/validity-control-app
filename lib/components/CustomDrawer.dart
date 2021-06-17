import 'package:flutter/material.dart';

class CustomDrawer extends Drawer {
  CustomDrawer(BuildContext context)
      : super(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu'),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              ListTile(
                title: Text('Produtos'),
                onTap: () {},
              ),
            ],
          ),
        );
}

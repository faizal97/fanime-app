import 'package:flutter/material.dart';
import 'package:fanime/components/menu.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {

  @override
  Widget build(BuildContext context) {
    
      List<Menu> menus = [
        Menu(label: "Home", route: '/home', icon: Icons.home, onTap:() {
          Navigator.pushReplacementNamed(context, '/home');
        }),
        Menu(label: "About Us", route: '/about-us', icon: Icons.help_outline),
      ];

    return Drawer(
        child: ListView.builder(
          itemCount: menus.length,
          itemBuilder: (context, index) {
            return menus[index].drawMenu();
          },
        ),
      );
  }
}
import 'package:flutter/material.dart';

class Menu {
  
  String label;
  String route;
  IconData icon;
  GestureTapCallback onTap;

  Menu({this.label, this.route, this.icon, this.onTap});

  Padding drawMenu() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
      child: ListTile(
        onTap: this.onTap,
        title: Text(this.label),
        leading: Icon(this.icon),
      ),
    );
  }
}
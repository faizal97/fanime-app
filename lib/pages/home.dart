import 'package:fanime/components/menu.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Menu> menus = [
    Menu(label: "Home", route: '/home', icon: Icons.home),
    Menu(label: "About Us", route: '/about-us', icon: Icons.help_outline),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'FANIME',
          style: TextStyle(
            fontFamily: 'FredokaOne',
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: Text('HOME Screen'),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: menus.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
              child: ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, menus[index].route);
                },
                title: Text(menus[index].label),
                leading: Icon(menus[index].icon),
              ),
            );
          },
        ),
      ),
    );
  }
}
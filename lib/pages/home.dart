import 'package:fanime/components/main_drawer.dart';
import 'package:fanime/components/menu.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
      drawer: MainDrawer(),
    );
  }
}
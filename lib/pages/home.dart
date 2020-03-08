import 'package:fanime/components/main_drawer.dart';
import 'package:fanime/components/menu.dart';
import 'package:fanime/components/top.dart';
import 'package:fanime/services/jikan_anime.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  final List<Top> topList;

  Home({this.topList});

  @override
  _HomeState createState() => _HomeState(topList: topList);
}

class _HomeState extends State<Home> {
  final List<Top> topList;

  _HomeState({this.topList});

  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'FANIME -  Top Airing',
          style: TextStyle(
            fontFamily: 'FredokaOne',
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Scrollbar(
            child: ListView.builder(
              // controller: controller,
              itemCount: topList.length,
              itemBuilder: (context, index) {
                return topList[index].makeCard();
              },
            ),
          ),
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
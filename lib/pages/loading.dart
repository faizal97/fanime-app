import 'dart:convert';

import 'package:fanime/components/top.dart';
import 'package:fanime/pages/home.dart';
import 'package:fanime/services/jikan_anime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  List<Top> topList = [];

  Future<void> getData() async {

    topList = await JikanAnime.getTopAnimes();

    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => Home(topList: topList),
    ));
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFoldingCube(
          color: Colors.blue[100],
          size: 50.0,
        )
      ),
    );
  }
}
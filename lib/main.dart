import 'package:fanime/pages/home.dart';
import 'package:fanime/pages/loading.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
  },
));

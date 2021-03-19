import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_online/Screens/Login.dart';

import 'Screens/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MarketPlace Online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Login(),
    );
  }
}

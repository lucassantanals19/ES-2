import 'package:flutter/material.dart';
import 'package:marketplace_online/Model/Usuario.dart';
import 'package:marketplace_online/Screens/Login.dart';
import 'package:scoped_model/scoped_model.dart';
import 'Screens/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<Usuario>(
      model: Usuario(),
      child: MaterialApp(
        title: 'MarketPlace Online',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Login(),
      ),
    );
  }
}

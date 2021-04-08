import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //degrader inicio
    Widget build(BuildContext context) {
      Widget _buildDrawerBack() => Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 211, 118, 130),
              Color.fromARGB(255, 253, 181, 168)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          );
      //degrader fim

      return Stack(
        children: <Widget>[
          _buildDrawerBack(),
        ],
      );
    }
  }
}

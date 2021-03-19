import 'package:flutter/material.dart';

class TelaTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Teste"),
      ),
      body: Container(
        child: Text("Ola Mundo!"),
      ),
    );
  }
}

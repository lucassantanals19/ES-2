import 'package:flutter/material.dart';

enum OpcoesdoMenu { Acessarsemcadastro, AcessarComGmail, AcessarComFacebook }

class PopMenuMaisOpcoes extends StatelessWidget {
  const PopMenuMaisOpcoes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<OpcoesdoMenu>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<OpcoesdoMenu>>[
          PopupMenuItem(
            child: Text("Entrar Como Visitante"),
            value: OpcoesdoMenu.Acessarsemcadastro,
          ),
          PopupMenuItem(
            child: Text("Entrar Com Gmail"),
            value: OpcoesdoMenu.AcessarComGmail,
          ),
          PopupMenuItem(
            child: Text("Entrar Com Facebook"),
            value: OpcoesdoMenu.AcessarComFacebook,
          )
        ];
      },
    );
  }
}

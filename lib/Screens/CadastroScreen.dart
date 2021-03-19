import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:marketplace_online/Model/Usuario.dart';
import 'package:flutter/services.dart';

import 'Login.dart';

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  TextEditingController _controllerNome = TextEditingController();

  TextEditingController _controllerEmail = TextEditingController();

  TextEditingController _controllerSenha = TextEditingController();

  String _erroMensage = "";

  void mensageDeCadastroRealizado() {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      elevation: 150,
      content: Text("cadastro realizado"),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra do topo do aplicativo
      appBar: AppBar(
        title: Text("Cadastro de Usuário"),
      ),
      //Corpo do aplicativo
      //Toda essa tela do app foi construida dentro de widget container
      //que mermite apenas um widget filho, que neste caso é um ListView
      //O ListView permite por varios Widgetes nele sem que ocorra OverFlow na tela

      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),

            Center(
              child: Text("Fazer Cadastro",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontStyle: FontStyle.italic)),
            ),

            //SizedBox para espacamento
            SizedBox(
              height: 20,
            ),

            //SizedBox para TextFormField do Nome do usuario
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  controller: _controllerNome,
                  autofocus: false,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                    labelText: "Digite seu Nome Completo",
                    labelStyle: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                    border: UnderlineInputBorder(),
                  ),
                  onSaved: (String value) {},
                  validator: (String value) {
                    return value.contains('@')
                        ? "Não é permitido uso de @"
                        : null;
                  },
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            //Campo do Email
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  controller: _controllerEmail,
                  autofocus: false,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    labelText: "Email*",
                    labelStyle: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Campo Senha
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: _controllerSenha,
                autofocus: false,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.security,
                    color: Colors.red,
                  ),
                  labelText: "Digite Sua Senha",
                  labelStyle: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                  border: UnderlineInputBorder(),
                ),
              ),
            ),

            FlatButton(
              child: Text("Enviar"),
              onPressed: () {
                validarCampos();
              },
            ),
            Text(_erroMensage)
          ],
        ),
      ),
    );
  }

//Validação dos campos
  void validarCampos() {
    String _nome = _controllerNome.text;
    String _email = _controllerEmail.text;
    String _senha = _controllerSenha.text;

    if (_nome.isNotEmpty) {
      if (_email.isNotEmpty) {
        if (_senha.isNotEmpty) {
          Usuario usuario = Usuario();
          usuario.nome = _nome;
          usuario.email = _email;
          usuario.senha = _senha;

          _cadastrarUsuario(usuario);
        }
      }
    }
  }

  _cadastrarUsuario(Usuario usuario) {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .createUserWithEmailAndPassword(
            email: usuario.email, password: usuario.senha)
        .then(
      (firebaseuser) {
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  content: Text("Cadastro Realizado com Sucesso!"),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Login(),
                          ),
                        );
                      },
                      child: Text("Ok!"),
                    )
                  ],
                ));
      },
    ).catchError((error) {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                content: Text("Cadastro Não Realizado, tente novamente!"),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context, "ok");
                    },
                    child: Text("Ok!"),
                  )
                ],
              ));

      setState(
        () {
          SnackBar erroMensage = SnackBar(
            content: Text("Cadastro não realizado! Tente novamente"),
          );
          Scaffold.of(context).showSnackBar(erroMensage);
        },
      );
    });
  }
}

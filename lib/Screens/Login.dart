import 'package:flutter/material.dart';
import 'package:marketplace_online/Model/Usuario.dart';
import 'package:marketplace_online/Screens/TelaTeste.dart';

import 'CadastroScreen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();

  TextEditingController _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("imagens/BG.png"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 0,
                        bottom: 200,
                        child: Image.asset(
                          "imagens/Detalhes.png",
                          scale: 2,
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 1,
                              left: -160,
                              right: -140,
                              bottom: -100,
                              child: Image.asset(
                                "imagens/Logo.png",
                                scale: 2.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //Formularios
                Column(
                  children: <Widget>[
                    TextFormField(
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Digite Seu Email:",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      autofocus: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key),
                        labelText: "Digite Sua Senha:",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                //Redefinição de senha
                FlatButton(
                  child: Text("Esqueci minha Senha"),
                  onPressed: () {},
                ),
                //Botão Entrar
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      shadowColor: Colors.black,
                      elevation: 10,
                      primary: Colors.amber[700],
                      onPrimary: Colors.black),
                  onPressed: () {},
                  child: Text(
                    "ENTRAR",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
//Botões de baixo
                Column(
                  children: <Widget>[
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Primeiro Botão
                          SizedBox(
                            height: 50,
                            width: 150,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  padding: EdgeInsets.only(
                                    left: 30,
                                  ),
                                  primary: Colors.red,
                                  onPrimary: Colors.black),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            CadastroScreen()));
                              },
                              label: Text(
                                "Criar Conta",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                              icon: Icon(Icons.person_add, color: Colors.white),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 30.0)),
                          //Botão 2
                          SizedBox(
                            height: 50,
                            width: 150,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  primary: Colors.indigoAccent,
                                  onPrimary: Colors.black),
                              onPressed: () => _bottomSheet(context),
                              icon: Icon(
                                Icons.arrow_forward_ios_sharp,
                              ),
                              label: Text(
                                "Outras \nOpções de \nEntrada",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext c) {
          return Wrap(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Opções de Entrada',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Image.asset("imagens/search.png", height: 40),
                title: Text("Entrar com conta do Google"),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("imagens/facebook.png", height: 40),
                title: Text("Entrar com conta do Facebook"),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("imagens/anonimo.png", height: 40),
                title: Text("Entrar como Visitante"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TelaTeste()));
                },
              )
            ],
          );
        });
  }
}

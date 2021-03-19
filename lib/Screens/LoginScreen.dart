import 'package:flutter/material.dart';
import 'package:marketplace_online/Screens/CadastroScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("imagens/bgLogin.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken)),
        ),
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Icon(
                    Icons.add_business_sharp,
                    size: 140,
                    color: Colors.white,
                  ),
                )),
            SizedBox(
              child: Center(
                child: Text(
                  "MarketPlace Online",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              height: 100,
            ),

            //Campo para receber email do usuario
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: "Digite Seu E-Mail:",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
            //Espacamento
            SizedBox(
              height: 10,
            ),

            //Campo para Receber Senha do Usuario
            TextField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Digite Sua Senha:",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),

            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Esqueci a senha",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  shadowColor: Colors.black,
                  elevation: 10,
                  primary: Colors.white,
                  onPrimary: Colors.black),
              onPressed: () {},
              child: Text(
                "ENTRAR",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  shadowColor: Colors.black,
                  elevation: 10,
                  primary: Colors.black,
                  onPrimary: Colors.black),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CadastroScreen()));
              },
              child: Text(
                "CADASTRAR-SE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        shadowColor: Colors.black,
                        elevation: 10,
                        padding: EdgeInsets.only(left: 30, right: 30),
                        primary: Colors.red,
                        onPrimary: Colors.black),
                    onPressed: () {},
                    child: Text(
                      "Entrar com Google",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        shadowColor: Colors.black,
                        elevation: 10,
                        padding: EdgeInsets.only(left: 30, right: 30),
                        primary: Colors.indigoAccent,
                        onPrimary: Colors.black),
                    onPressed: () {},
                    child: Text(
                      "Entrar com Facebook",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

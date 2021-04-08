import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Usuario extends Model {
  FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseUser firebaseUser;

  Map<String, dynamic> userData = Map();

  bool isLoading = false;

  //Metodo para Login do usuario no aplicativo

  void login(
      {@required Map<String, dynamic> userData,
      @required String pass,
      @required VoidCallback onSuccess,
      @required VoidCallback onFail}) {
    isLoading = true;
    notifyListeners();

    _auth
        .createUserWithEmailAndPassword(
            email: userData["email"], password: pass)
        .then((authResult) async {
      firebaseUser = authResult.user;
      await _salvarDadosDoUsuario(userData);
    }).catchError((e) {});
  }

  void logout() {}

  void recuperarSenha() {}

  //bool isLoggedIn() {}

  Future<Null> _salvarDadosDoUsuario(Map<String, dynamic> userData) async {
    this.userData = userData;
    await Firestore.instance
        .collection("usuarios")
        .document(firebaseUser.uid)
        .setData(userData);
  }
  //Future<Void> currentUserUID() async {
  //  firebaseUser = await _firebaseAuth.currentUser();
  // }
}

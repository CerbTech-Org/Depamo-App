import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  final User? user;

  const HomePage({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accueil")),
      body: Center(
        child: user != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Bienvenue, ${user!.displayName}!", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  Text("Email : ${user!.email}"),
                ],
              )
            : Text("Utilisateur non connecté"),
      ),
    );
  }
}

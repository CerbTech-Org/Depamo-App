import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String? email;

  ProfilePage({this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenue"),
      ),
      body: Center(
        child: Text(
          "Bienvenue, $email !\nNous sommes ravis de vous revoir.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

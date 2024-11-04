import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Connexion Firebase',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF007BFF), // Bleu pour la fiabilité
          secondary: Color(0xFF28A745), // Vert pour les actions réussies
        ),
        scaffoldBackgroundColor: Color(0xFFE9ECEF), // Gris clair pour le fond
        appBarTheme: AppBarTheme(
          color: Color(0xFF0056A6), // Bleu marine pour la barre d'application
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF007BFF), // Couleur des boutons d’action
            foregroundColor: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Color(0xFFC82333), // Rouge pour les actions importantes
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}

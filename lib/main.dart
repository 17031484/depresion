import 'package:depresion/screens/barra_screen.dart';
import 'package:depresion/screens/datos.dart';
import 'package:depresion/screens/lista_diagnosticos.dart';
import 'package:depresion/screens/principal_screen.dart';
import 'package:depresion/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var routeName;
    return MaterialApp(
      routes: {
        PrincipalScreen.routeName: (context) => PrincipalScreen(),
        '/datos': (BuildContext context) => DatosScreen(),
        '/barra': (BuildContext context) => BarraScreen(),
        '/ver': (BuildContext context) => ListDiagnosticos()
      },
      home: WelcomeScreen(),
    );
  }
}

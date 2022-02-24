import 'package:depresion/screens/barra_screen.dart';
import 'package:depresion/screens/datos.dart';
import 'package:depresion/screens/principal_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: BarraScreen(),
      duration: 4000,
      imageSrc: 'assets/itc.png',
      imageSize: 150,
      text: '¡Bienvenido!',
      backgroundColor: Color.fromARGB(255, 14, 111, 162),
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      colors: [Colors.blue, Colors.green, Colors.orange, Colors.red],
    );
  }
}

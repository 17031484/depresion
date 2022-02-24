import 'package:depresion/screens/datos.dart';
import 'package:flutter/material.dart';

import '../NavigationDrawerWidget.dart';

class BarraScreen extends StatefulWidget {
  BarraScreen({Key? key}) : super(key: key);

  @override
  _BarraScreenState createState() => _BarraScreenState();
}

class _BarraScreenState extends State<BarraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Datos de contacto'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: DatosScreen(),
      ),
    );
  }
}

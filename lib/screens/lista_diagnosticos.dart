import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depresion/provider/firebase_provider.dart';
import 'package:flutter/material.dart';

class ListDiagnosticos extends StatefulWidget {
  ListDiagnosticos({Key? key}) : super(key: key);

  @override
  _ListDiagnosticosState createState() => _ListDiagnosticosState();
}

class _ListDiagnosticosState extends State<ListDiagnosticos> {
  late FirebaseProvider _firebaseProvider;

  @override
  void initState() {
    super.initState();
    _firebaseProvider = FirebaseProvider();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _firebaseProvider.getAllDiagnosticos(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            return CardDiagnostico(diagDocument: document);
          }).toList(),
        );
      },
    );
  }
}

class CardDiagnostico extends StatelessWidget {
  const CardDiagnostico({Key? key, required this.diagDocument})
      : super(key: key);

  final DocumentSnapshot diagDocument;
  @override
  Widget build(BuildContext context) {
    final _card = Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Opacity(
          opacity: .9,
          child: Container(
            height: 55.0,
            color: Colors.white,
            child: Row(
              children: [
                Text(
                  'Nombre: ' +
                      diagDocument['nombre '] +
                      '\n'
                          'Nivel de depresión: ' +
                      diagDocument['msj'] +
                      '\n' +
                      'Contacto: ' +
                      diagDocument['tel'],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
        )
      ],
    );
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(2.0), boxShadow: [
        BoxShadow(
            color: Colors.blue.withOpacity(.2),
            offset: Offset(0.0, 5.0),
            blurRadius: 1.0)
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3.0),
        child: _card,
      ),
    );
  }
}

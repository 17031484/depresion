import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depresion/models/diagnostico.dart';

class FirebaseProvider {
  late FirebaseFirestore _firestore;
  late CollectionReference _diagnosticoCollection;

  FirebaseProvider() {
    _firestore = FirebaseFirestore.instance;
    _diagnosticoCollection = _firestore.collection('diagnosticos');
  }

  Future<void> saveDiagnostico(Diagnostico obj) =>
      _diagnosticoCollection.add(obj.toMap());

  Stream<QuerySnapshot> getAllDiagnosticos() {
    return _diagnosticoCollection.snapshots();
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diocese_santos/infra/api/adapters/firebase_adapter.dart';

FirebaseAdapter makeFirebaseAdapter() {
  final client = FirebaseFirestore.instance;
  return FirebaseAdapter(client: client);
}

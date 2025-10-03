import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diocese_santos/infra/api/client/baas_client.dart';

final class FirebaseAdapter implements BaaSClient {
  final FirebaseFirestore client;

  FirebaseAdapter({required this.client});

  @override
  Future<List<dynamic>> get(String collection) async {
    final response = await client.collection(collection).get();
    return response.docs.map((doc) => {'id': doc.id, ...doc.data()}).toList();
  }
}

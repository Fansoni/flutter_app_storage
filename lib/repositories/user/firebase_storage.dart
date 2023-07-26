import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseStorage {
  final db = FirebaseFirestore.instance;

  Future<bool> save(String collection, Map<String, dynamic> data) async {
    DocumentReference doc = await db.collection(collection).add(data);
    return doc.isDefinedAndNotNull;
  }

  Future<dynamic> findOne(String collection,
      {required String field, required String id}) async {
    return await db.collection(collection).where(field, isEqualTo: id).get();
  }
}

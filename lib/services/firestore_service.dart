import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final enquetes = FirebaseFirestore.instance.collection('enquetes');

  Stream<QuerySnapshot<Map<String, dynamic>>> getEnquetes() {
    final data = enquetes.orderBy('date-added').snapshots();
    return data;
  }

  Future addEnquete({
    required String title,
    required String option1,
    required String option2,
  }) async {
    Map<String, dynamic> data = {
      'title': title,
      'option1': option1,
      'option2': option2,
      'date-added': DateTime.now(),
    };
    return enquetes.add(data);
  }
}

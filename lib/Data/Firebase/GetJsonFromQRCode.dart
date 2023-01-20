import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetJsonFromQRCode extends StatelessWidget {
  final String documentId;
  final FirebaseFirestore db = FirebaseFirestore.instance;
  GetJsonFromQRCode(this.documentId, {super.key});

  Future<String> getJson(String docID) async => await db
          .collection("SharableQuizzes")
          .doc(docID) //ID of the doc
          .get()
          .then(
        (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;
          print("Get Data from ID: $docID");
          var jsonData = data.values
              .toString()
              .substring(1, data.values.toString().length - 1);
          print(jsonData);
          return jsonData;
        },
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        getJson("c171fa6b-ff47-4bf1-a6b6-bc903e31efbe");
      },
      child: const Text('Get Json'),
    );
  }
}

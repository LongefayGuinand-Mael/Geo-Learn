import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class AddJsonToDatabase extends StatelessWidget {
  final String json;
  FirebaseFirestore db = FirebaseFirestore.instance;
  AddJsonToDatabase(this.json, {super.key});

  final data = {"json": "{[JSON_data]}"};

  Future<void> addJson() async {
    var quizzUuid = const Uuid().v4();
    await db
        .collection("SharableQuizzes")
        .doc(quizzUuid.toString())
        .set(data)
        .then((documentSnapshot) => print("Added Data with ID: $quizzUuid"));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addJson;
      },
      child: const Text('Add Json'),
    );
  }
}

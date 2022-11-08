import 'package:GeoLearn/Data/DataSources/MenuItem_DataSource.dart';
import 'package:GeoLearn/Data/Models/MenuItem_Model.dart';
import 'package:flutter/material.dart';

class MockMenuItem_DataSource implements MenuItem_DataSource {
  @override
  List<MenuItem_Model> getAllMenuItem() {
    return [
      MenuItem_Model(
        'LEARN',
        '/learn',
        const Icon(
          Icons.school_rounded,
          color: Color(0xFF3A736A),
        ),
      ),
      MenuItem_Model(
        'QUIZZES',
        '/quizz',
        const Icon(
          Icons.quiz_outlined,
          color: Color(0xFF3A736A),
        ),
      ),
      MenuItem_Model(
        'Other Test',
        '/',
        const Icon(
          Icons.add_box_rounded,
          color: Color(0xFF3A736A),
        ),
      ),
    ];
  }
}

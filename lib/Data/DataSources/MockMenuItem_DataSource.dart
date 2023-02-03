import 'package:GeoLearn/Data/DataSources/MenuItem_DataSource.dart';
import 'package:GeoLearn/Data/Models/MenuItemModel.dart';
import 'package:flutter/material.dart';

class MockMenuItem_DataSource implements MenuItem_DataSource {
  @override
  List<MenuItemModel> getAllMenuItem() {
    return [
      // MenuItemModel(
      //   'Learn',
      //   '/learn',
      //   const Icon(
      //     Icons.school_rounded,
      //     color: Color(0xFF3A736A),
      //   ),
      // ),
      MenuItemModel(
        'Quizzes',
        '/quizz',
        const Icon(
          Icons.quiz_outlined,
          color: Color(0xFF3A736A),
        ),
      ),
      // MenuItemModel(
      //   'Maps',
      //   '/maps',
      //   const Icon(
      //     Icons.map_outlined,
      //     color: Color(0xFF3A736A),
      //   ),
      // ),
      MenuItemModel(
        'Create and Sending Quizz',
        '/quizz_creation',
        const Icon(
          Icons.send_to_mobile,
          color: Color(0xFF3A736A),
        ),
      ),
      MenuItemModel(
        'Receiving Quizz',
        '/quizz_receiving',
        const Icon(
          Icons.install_mobile,
          color: Color(0xFF3A736A),
        ),
      ),
    ];
  }
}

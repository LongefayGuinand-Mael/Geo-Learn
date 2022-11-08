import 'package:GeoLearn/Data/DataSources/DYK_DataSource.dart';
import 'package:GeoLearn/Data/DataSources/MockDYK_DataSource.dart';

class DidYouKnow_UseCase {
  String getTodayDidYouKnow() {
    DidYouKnow_DataSource DYK_DataSource = MockDidYouKnow_DataSource();
    var allDYK = DYK_DataSource.getAllDidYouKnow();
    return allDYK.first.text;
  }
}

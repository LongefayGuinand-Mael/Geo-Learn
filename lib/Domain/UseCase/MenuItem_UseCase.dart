import 'package:GeoLearn/Data/DataSources/MenuItem_DataSource.dart';
import 'package:GeoLearn/Data/DataSources/MockMenuItem_DataSource.dart';
import 'package:GeoLearn/Data/Models/MenuItem_Model.dart';

class MenuItem_UseCase {
  List<MenuItem_Model> getMenuItem() {
    MenuItem_DataSource Menu_DataSource = MockMenuItem_DataSource();
    var allMenus = Menu_DataSource.getAllMenuItem();
    return allMenus;
  }

  // Widget getMenuItemPage(MenuItem_Model menuItem) {
  //   switch (menuItem.menuName) {
  //     case "LEARN":
  //       return LearnPage();
  //     case "QUIZZES":
  //       return QuizzPage();
  //     default:
  //       return HomePage();
  //   }
  // }
}

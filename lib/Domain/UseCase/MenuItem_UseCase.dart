import 'package:GeoLearn/Data/DataSources/MenuItem_DataSource.dart';
import 'package:GeoLearn/Data/DataSources/MockMenuItem_DataSource.dart';
import 'package:GeoLearn/Data/Models/MenuItemModel.dart';

class MenuItem_UseCase {
  List<MenuItemModel> getMenuItem() {
    MenuItem_DataSource Menu_DataSource = MockMenuItem_DataSource();
    var allMenus = Menu_DataSource.getAllMenuItem();
    return allMenus;
  }
}

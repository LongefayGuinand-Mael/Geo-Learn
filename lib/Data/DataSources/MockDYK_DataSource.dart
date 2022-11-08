import 'package:GeoLearn/Data/DataSources/DYK_DataSource.dart';
import 'package:GeoLearn/Data/Models/DidYouKnow_Model.dart';


class MockDidYouKnow_DataSource implements DidYouKnow_DataSource {
  @override
  List<DidYouKnow_Model> getAllDidYouKnow() {
    return [
      DidYouKnow_Model(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula vel sem eu pretium. Curabitur elementum velit in aliquam ultrices. Curabitur ullamcorper eleifend vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis hendrerit velit felis, ac consectetur metus mollis sit amet. Pellentesque aliquam justo et tortor condimentum laoreet. Suspendisse scelerisque augue euismod dolor lacinia, ut fringilla arcu consectetur.'),
      DidYouKnow_Model('1- Did you know?'),
      DidYouKnow_Model('2- Did you know?'),
      DidYouKnow_Model('3- Did you know?'),
      DidYouKnow_Model('4- Did you know?'),
      DidYouKnow_Model('5- Did you know?'),
    ];
  }
}

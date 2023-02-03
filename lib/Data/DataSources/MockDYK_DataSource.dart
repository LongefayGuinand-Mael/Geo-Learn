import 'package:GeoLearn/Data/DataSources/DYK_DataSource.dart';
import 'package:GeoLearn/Data/Models/DidYouKnowModel.dart';

class MockDidYouKnow_DataSource implements DidYouKnow_DataSource {
  @override
  List<DidYouKnowModel> getAllDidYouKnow() {
    return [
      DidYouKnowModel(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula vel sem eu pretium. Curabitur elementum velit in aliquam ultrices. Curabitur ullamcorper eleifend vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis hendrerit velit felis, ac consectetur metus mollis sit amet. Pellentesque aliquam justo et tortor condimentum laoreet. Suspendisse scelerisque augue euismod dolor lacinia, ut fringilla arcu consectetur.'),
      DidYouKnowModel('1- Did you know?'),
      DidYouKnowModel('2- Did you know?'),
      DidYouKnowModel('3- Did you know?'),
      DidYouKnowModel('4- Did you know?'),
      DidYouKnowModel('5- Did you know?'),
    ];
  }
}

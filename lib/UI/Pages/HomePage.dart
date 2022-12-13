import 'package:GeoLearn/Domain/UseCase/DYK_UseCase.dart';
import 'package:GeoLearn/Domain/UseCase/MenuItem_UseCase.dart';
import 'package:GeoLearn/UI/CustomWidgets/DidYouKnow.dart';
import 'package:GeoLearn/UI/CustomWidgets/HomePageButton.dart';
import 'package:flutter/material.dart';

//TODO ==> LOGO APP à ajouter

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var _MenuItem = MenuItem_UseCase().getMenuItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFB9D1CE),
      child: Center(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                Opacity(
                  opacity: 0.925,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Image.asset(
                      "assets/images/logos/GreenLogoGeoLearn.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                DidYouKnow(
                  didYouKnowText: DidYouKnow_UseCase().getTodayDidYouKnow(),
                ),
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(),
                      ),
                      Flexible(
                        flex: 8,
                        child: ListView.builder(
                          itemCount: _MenuItem.length,
                          itemBuilder: (BuildContext context, int index) {
                            return HomePageButton(
                              labelText: _MenuItem[index].menuName,
                              icon: _MenuItem[index].menuIcon,
                              route: _MenuItem[index].pageRoute,
                            );
                          },
                        ),
                      ),
                      Flexible(
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

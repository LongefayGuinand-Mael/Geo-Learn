import 'package:GeoLearn/Domain/UseCase/MenuItem_UseCase.dart';
import 'package:GeoLearn/UI/CustomWidgets/DidYouKnow.dart';
import 'package:GeoLearn/UI/CustomWidgets/HomePageButton.dart';
import 'package:flutter/material.dart';

//TODO ==> LOGO APP à ajouter

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _menuItem = MenuItem_UseCase().getMenuItem();

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
                SizedBox(height: MediaQuery.of(context).size.height * 0.075),
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
                const DidYouKnow(),
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(),
                      ),
                      Flexible(
                        flex: 8,
                        child: ListView.builder(
                          itemCount: _menuItem.length,
                          itemBuilder: (BuildContext context, int index) {
                            return HomePageButton(
                              labelText: _menuItem[index].menuName,
                              icon: _menuItem[index].menuIcon,
                              route: _menuItem[index].pageRoute,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

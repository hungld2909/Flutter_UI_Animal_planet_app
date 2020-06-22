import 'package:animal_planet_app/common/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../utls/strings.dart';
import '../utls/text_styles.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            child: Container(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/elephant.jpg",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      CustomerAppBar(
                        opacity: 1,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment(0, -0.6),
                          child: Text(
                            Strings.welcomeToAPlanet,
                            style: TextStyles.bigHeadingTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                color: Color(0xFFB98959),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Text(
                      Strings.relatedToYou,
                      style: TextStyles.buttonTextStyle,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 16),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      "assets/tiger.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.lifeWithATiger,
                                    style: TextStyles.titleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.loremIpsum,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                             margin: const EdgeInsets.only(left: 16),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      "assets/wild_animals.jpeg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.lifeWithATiger,
                                    style: TextStyles.titleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.loremIpsum,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Text(
                      Strings.quickCategories,
                      style: TextStyles.titleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/bear.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              Strings.bear,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/lion.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              Strings.lion,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/bear.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              Strings.bear,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/pets.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              Strings.pets,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

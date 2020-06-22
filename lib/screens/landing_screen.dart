import 'package:animal_planet_app/common/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../utls/strings.dart';
import '../utls/text_styles.dart';
import 'choose_plan_screen.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/elephant.jpg",
          height: height,
          fit: BoxFit.fitHeight,
        ),
        Column(
          children: [
            CustomerAppBar(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 32, bottom: 32, left: 32),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: Strings.READY_TO_WATCH,
                      style: TextStyles.bigHeadingTextStyle),
                  TextSpan(text: "\n"),
                  TextSpan(
                      text: Strings.READY_TO_WATCH_DESC,
                      style: TextStyles.bodyTextStyle),
                  TextSpan(text: "\n"),
                  TextSpan(text: "\n"),
                  TextSpan(
                      text: Strings.START_ENJOYING,
                      style: TextStyles.buttonTextStyle),
                ]),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: -30,
          right: -30,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ChoosePlanScreen()));
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFDAD4CC).withOpacity(0.8),
              ),
              child: Align(
                alignment: Alignment(-0.4, -0.4),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

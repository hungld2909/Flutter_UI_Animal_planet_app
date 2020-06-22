import 'package:animal_planet_app/utls/strings.dart';
import 'package:flutter/material.dart';
import '../utls/text_styles.dart';

class CustomerAppBar extends StatelessWidget {
  final double opacity;

  const CustomerAppBar({Key key, this.opacity = 0.8}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: Strings.APP_NAME,
                    style: TextStyles.appNameTextStyle,
                  ),
                  TextSpan(
                    text: "\n",
                  ),
                  TextSpan(
                    text: Strings.TAG_LINE,
                    style: TextStyles.tagLineTextStyle,
                  )
                ],
              ),
            ),
            Spacer(),
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

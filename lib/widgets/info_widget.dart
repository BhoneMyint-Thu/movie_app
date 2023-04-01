import 'package:flutter/material.dart';
import 'package:tmdb_app/constant/dimens.dart';

import '../constant/colors.dart';
import 'easy_text.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    Key? key,
    required this.firstInfoText,
    required this.secondInfoText,
  }) : super(key: key);
  final String firstInfoText;
  final String secondInfoText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: EasyText(
          text: firstInfoText,
          fontWeight: FontWeight.w500,
          fontSize: kFontSie18x,
          color: kSecondaryTextColor,
        )),
        Expanded(
            child: EasyText(
          text: secondInfoText,
          fontWeight: FontWeight.w500,
          color: kSecondaryTextColor,
          maxLine: 10,
          fontSize: kFontSie18x,
        ))
      ],
    );
  }
}

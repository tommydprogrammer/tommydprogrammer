import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/style.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar();

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.centerRight,
        decoration: new BoxDecoration(color: Color(0xFFE8F0FF)),
        child: Row(
          children: [
            Expanded(
              child: Container(),
            ),
            Text(
              'St. Ives Hospital',
              style: kSmallTextStyle.copyWith(),
            ),
            SizedBox(
              width: SizeConfig.minBlockVertical * 2.0,
            ),
            Container(
              width: 40.0,
              height: 40.0,
              // padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: kWhiteColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: kPrimaryColor,
                  width: 1.0,
                ),
              ),
              child: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

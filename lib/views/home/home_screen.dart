import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reminderz/core/dashboard.dart';
import 'package:reminderz/core/navigation_bar.dart';
import 'package:reminderz/core/side_menu.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/solid_button.dart';
import 'package:reminderz/core/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dashboard(
        activeName: 'dashboard',
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 20.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 40.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome back St. Ives Hospital',
                              style: kMainTextStyle.copyWith(
                                fontSize: 26.0,
                                color: kBlackColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical * 2.0,
                            ),
                            Text(
                              'Since your last login on the system, there were:',
                              style: kSmallTextStyle.copyWith(
                                color: kBlackColor,
                                fontSize: 16.0,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 8.0,
                                  width: 8.0,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Text(
                                  '210 new registrations',
                                  style: kSmallTextStyle.copyWith(
                                    color: kBlackColor,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 8.0,
                                  width: 8.0,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Text(
                                  '1523 reminders sent.',
                                  style: kSmallTextStyle.copyWith(
                                    color: kBlackColor,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 8.0,
                                  width: 8.0,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Text(
                                  '2450 tips sent.',
                                  style: kSmallTextStyle.copyWith(
                                    color: kBlackColor,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.minBlockVertical * 4.0,
                    ),
                    Card(
                      color: Color(0xFFFF007C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2.1K',
                                        style: kMainTextStyle.copyWith(
                                          fontSize: 26.0,
                                          color: kWhiteColor,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'Appointments This Month',
                                        style: kSmallTextStyle.copyWith(
                                          color: kWhiteColor,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFA72D68),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.minBlockVertical * 2.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: Color(0xFF2D62ED),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/svgs/copy.svg',
                                      color: kWhiteColor),
                                  SizedBox(
                                    height: SizeConfig.minBlockVertical * 3.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '2.1K',
                                              style: kMainTextStyle.copyWith(
                                                fontSize: 26.0,
                                                color: kWhiteColor,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            Text(
                                              'Appointments This Month',
                                              style: kSmallTextStyle.copyWith(
                                                color: kWhiteColor,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF789AF3),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_back,
                                            color: kWhiteColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            color: Color(0xFF7D00B5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/svgs/download.svg',
                                      color: kWhiteColor),
                                  SizedBox(
                                    height: SizeConfig.minBlockVertical * 3.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '2.1K',
                                              style: kMainTextStyle.copyWith(
                                                fontSize: 26.0,
                                                color: kWhiteColor,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            Text(
                                              'Appointments This Month',
                                              style: kSmallTextStyle.copyWith(
                                                color: kWhiteColor,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFBA58E6),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_back,
                                            color: kWhiteColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.minBlockVertical * 2.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: kPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/svgs/copy.svg',
                                      color: kWhiteColor),
                                  SizedBox(
                                    height: SizeConfig.minBlockVertical * 3.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '2.1K',
                                              style: kMainTextStyle.copyWith(
                                                fontSize: 26.0,
                                                color: kWhiteColor,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            Text(
                                              'Appointments This Month',
                                              style: kSmallTextStyle.copyWith(
                                                color: kWhiteColor,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF789AF3),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_back,
                                            color: kWhiteColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card(
                            color: Color(0xFF9B3CC6),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/svgs/download.svg',
                                      color: kWhiteColor),
                                  SizedBox(
                                    height: SizeConfig.minBlockVertical * 3.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '2.1K',
                                              style: kMainTextStyle.copyWith(
                                                fontSize: 26.0,
                                                color: kWhiteColor,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            Text(
                                              'Appointments This Month',
                                              style: kSmallTextStyle.copyWith(
                                                color: kWhiteColor,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFBA58E6),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_back,
                                            color: kWhiteColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: SizeConfig.minBlockHorizontal,
              ),
              Expanded(
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 40.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Today’s Appointments',
                              style: kMainTextStyle.copyWith(
                                fontSize: 26.0,
                                color: Color(0xFF272D3B),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical,
                            ),
                            Text(
                              'Fri, 12th March, 2021',
                              style: kSmallTextStyle.copyWith(
                                color: Color(0xFF272D3B),
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical,
                            ),
                            Text(
                              '145',
                              style: kMainTextStyle.copyWith(
                                fontSize: 70.0,
                                color: Color(0xFF272D3B),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical,
                            ),
                            SolidButton(
                              text: 'View Appointments',
                              textColor: kWhiteColor,
                              color: kPrimaryColor,
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.minBlockVertical * 2.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 40.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

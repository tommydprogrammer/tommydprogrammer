import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:reminderz/core/dialogs.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/solid_button.dart';
import 'package:reminderz/core/style.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen();

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100.0,
            snap: true,
            floating: true,
            pinned: true,
            backgroundColor: Colors.transparent,
            actions: [navigationBar(context)],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.only(
                    left: 70.0,
                    right: 70.0,
                    top: 100.0,
                    bottom: 100.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    image: DecorationImage(
                      image: AssetImage("assets/images/landing/hero2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4.0,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contact Us',
                                style: kMainTextStyle.copyWith(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical,
                              ),
                              Text(
                                'Optimise your business with the best industry tools for managing your appointments.',
                                style: kSmallTextStyle.copyWith(
                                  color: kBlackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 10.0,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: SolidButton(
                                  text: 'Get Quote',
                                  textColor: kWhiteColor,
                                  width: 250.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 100.0,
                    right: 100.0,
                    top: 50.0,
                    bottom: 50.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget navigationBar(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 14.0, sigmaY: 14.0),
      child: Container(
        alignment: Alignment.centerLeft,
        padding:
            EdgeInsets.only(left: 70.0, right: 70.0, top: 7.0, bottom: 7.0),
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          color: Color(0xFFE8F0FF).withOpacity(0.65),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Reminderz',
                  style: kMainTextStyle.copyWith(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Get.toNamed('/'),
                  child: Text(
                    'Home',
                    style: kSmallTextStyle.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 12.0),
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Text(
                  'About Us',
                  style: kSmallTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 12.0),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Text(
                  'How It Works',
                  style: kSmallTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 12.0),
                ),
                SizedBox(
                  width: 40.0,
                ),
                SolidButton(
                  text: 'Sign Up',
                  onPressed: () {
                    Dialogs.showRegisterDialog();
                  },
                  border: BorderSide(
                    color: kPrimaryColor,
                    width: 2.0,
                  ),
                  filled: true,
                  fillColor: Color(0xFFE8F0FF).withOpacity(0.65),
                  textColor: kPrimaryColor,
                ),
                SizedBox(
                  width: SizeConfig.minBlockHorizontal * 2.0,
                ),
                SolidButton(
                  text: 'Login',
                  onPressed: () {
                    Dialogs.showLoginOptionDialog();
                  },
                  textColor: kWhiteColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

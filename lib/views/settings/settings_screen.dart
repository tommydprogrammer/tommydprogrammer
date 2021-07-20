import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderz/core/dashboard.dart';
import 'package:reminderz/core/input_box.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/solid_button.dart';
import 'package:reminderz/core/style.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen();

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  PageController _pageController;
  int _currentIndex = 0;
  List<Widget> _indicators(BuildContext context) {
    List<Widget> _indicators = [];
    for (var i = 0; i < 3; i++) {
      _indicators.add(
        Container(
          width: _currentIndex == i ? 150.0 : 0.0,
          height: 10.0,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      );
    }
    return _indicators;
  }

  Color currentColor(int index, BuildContext context) {
    return 1 == index ? kPrimaryColor : kWhiteColor;
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dashboard(
        activeName: 'setting',
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: kMainTextStyle.copyWith(
                  fontSize: 30.0,
                  color: kBlackColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: SizeConfig.minBlockVertical * 2.0,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Profile Settings',
                            ),
                            Text('SMS Settings'),
                            Text(''),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.minBlockVertical * 3.0,
                        ),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 2.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF9B3CC6),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            Positioned(
                              top: -5.0,
                              right: 0.0,
                              left: 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: _indicators(context),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.minBlockVertical * 4.0,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.minBlockVertical * 4.0,
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InputBox(
                                validator: (value) {
                                  if (value.trim().isEmpty)
                                    return 'Full Name cannot be empty';
                                  return null;
                                },
                                borderSide: BorderSide(
                                  color: kSecondaryBorder,
                                ),
                                leadingIcon: Icons.email_outlined,
                                labelText: 'Email Address',
                                hintText: 'Email Address',
                                inputType: TextInputType.emailAddress,
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 2.0,
                              ),
                              InputBox(
                                validator: (value) {
                                  if (value.trim().isEmpty)
                                    return 'Full Name cannot be empty';
                                  return null;
                                },
                                borderSide: BorderSide(
                                  color: kSecondaryBorder,
                                ),
                                leadingIcon: Icons.email_outlined,
                                labelText: 'Password',
                                hintText: 'Password',
                                inputType: TextInputType.emailAddress,
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 4.0,
                              ),
                              SolidButton(
                                text: 'Save',
                                textColor: kWhiteColor,
                                onPressed: () {
                                  // Dialogs.showLoginDialog();
                                },
                                // width: double.,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                    Container(),
                    Container(),
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reminderz/core/dashboard.dart';
import 'package:reminderz/core/input_box.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/solid_button.dart';
import 'package:reminderz/core/style.dart';

class AppointmentDetailsScreen extends StatefulWidget {
  const AppointmentDetailsScreen();

  @override
  _AppointmentDetailsScreenState createState() =>
      _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen> {
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
        activeName: 'appointment',
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/back.svg',
                    width: 25.0,
                    height: 25.0,
                  ),
                  SizedBox(
                    width: SizeConfig.minBlockHorizontal * 2.0,
                  ),
                  Text(
                    'Appointment Details',
                    style: kMainTextStyle.copyWith(
                      fontSize: 30.0,
                      color: kBlackColor,
                      fontWeight: FontWeight.w900,
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
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Update Info',
                            ),
                            Text('Schedule Appointment'),
                            Text('View Appointment'),
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
                              Text(
                                'Patient\'s Name',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                  color: kBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: kPrimaryColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: 'Joe Deo',
                                  contentPadding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom: 2.0,
                                    top: 2.0,
                                    //right: 25.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 2.0,
                              ),
                              Text(
                                'Folder Number',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                  color: kBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: kPrimaryColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: 'Joe Deo',
                                  contentPadding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom: 2.0,
                                    top: 2.0,
                                    //right: 25.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 2.0,
                              ),
                              Text(
                                'Phone Number',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                  color: kBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: kPrimaryColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: 'Joe Deo',
                                  contentPadding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom: 2.0,
                                    top: 2.0,
                                    //right: 25.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 4.0,
                              ),
                              SolidButton(
                                text: 'Update',
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
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0)),
                                          borderSide: BorderSide(
                                            color: kPrimaryColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0)),
                                          borderSide: BorderSide(
                                            color: kPrimaryColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0)),
                                          borderSide: BorderSide(
                                            color: kPrimaryColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0)),
                                          borderSide: BorderSide(
                                            color: kPrimaryColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        hintText: 'Appointment Date',
                                        contentPadding: EdgeInsets.only(
                                          left: 15.0,
                                          bottom: 5.0,
                                          // top: 2.0,
                                          right: 25.0,
                                        ),
                                        suffix: SvgPicture.asset(
                                            'assets/svgs/calender.svg'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.minBlockHorizontal * 2.0,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: kPrimaryColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: kPrimaryColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: kPrimaryColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                          borderSide: BorderSide(
                                            color: kPrimaryColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        hintText: 'Appointment Time',
                                        contentPadding: EdgeInsets.only(
                                          left: 15.0,
                                          bottom: 5.0,
                                          top: 2.0,
                                          right: 25.0,
                                        ),
                                        suffix: SvgPicture.asset(
                                            'assets/svgs/copy.svg'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 2.0,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: kPrimaryColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: Color(0xFFB4B4B4),
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: 'Doctor\'s Name',
                                  contentPadding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom: 2.0,
                                    top: 2.0,
                                    //right: 25.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 2.0,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: kPrimaryColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: kPrimaryColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: kPrimaryColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    borderSide: BorderSide(
                                      color: kPrimaryColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  hintText: 'Click Type',
                                  contentPadding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom: 2.0,
                                    top: 2.0,
                                    //right: 25.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 4.0,
                              ),
                              Row(
                                children: [
                                  Text('SMS Language:'),
                                  SizedBox(
                                    width: SizeConfig.minBlockHorizontal * 2.0,
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: true,
                                          groupValue: '1',
                                          onChanged: (value) {},
                                        ),
                                        Text('English')
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: false,
                                          groupValue: '1',
                                          onChanged: (value) {},
                                        ),
                                        Text('Hausa')
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: false,
                                          groupValue: '1',
                                          onChanged: (value) {},
                                        ),
                                        Text('Igbo'),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: false,
                                          groupValue: '1',
                                          onChanged: (value) {},
                                        ),
                                        Text('Yoruba'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 4.0,
                              ),
                              SolidButton(
                                text: 'Schedule',
                                textColor: kWhiteColor,
                                onPressed: () {
                                  // Dialogs.showLoginDialog();
                                },
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Next Appointment:'),
                                  SizedBox(
                                    width: SizeConfig.minBlockHorizontal * 2.0,
                                  ),
                                  Text('14th April, 2021'),
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 4.0,
                              ),
                              Row(
                                children: [
                                  Text('Appointment Time:'),
                                  SizedBox(
                                    width: SizeConfig.minBlockHorizontal * 2.0,
                                  ),
                                  Text('4:00pm'),
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 4.0,
                              ),
                              Row(
                                children: [
                                  Text('Doctor\'s Time:'),
                                  SizedBox(
                                    width: SizeConfig.minBlockHorizontal * 2.0,
                                  ),
                                  Text('Dr. yusuf Bashir'),
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 4.0,
                              ),
                              Row(
                                children: [
                                  Text('Reminder sent:'),
                                  SizedBox(
                                    width: SizeConfig.minBlockHorizontal * 2.0,
                                  ),
                                  Text('Sent'),
                                ],
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 4.0,
                              ),
                              SolidButton(
                                text: 'View Previous Appointments',
                                textColor: kWhiteColor,
                                onPressed: () {
                                  // Dialogs.showLoginDialog();
                                },
                                width: 300.0,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
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

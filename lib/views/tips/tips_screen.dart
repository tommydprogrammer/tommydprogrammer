import 'package:flutter/material.dart';
import 'package:reminderz/core/dashboard.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/solid_button.dart';
import 'package:reminderz/core/style.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen();

  @override
  _TipsScreenState createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dashboard(
        activeName: 'tip',
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tips',
                  style: kMainTextStyle.copyWith(
                    fontSize: 30.0,
                    color: kBlackColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.minBlockVertical,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose Recipient Group',
                            style: kSmallTextStyle.copyWith(
                              color: Color(0xFFB2B2B2),
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.minBlockVertical,
                          ),
                          Container(
                            width: 350,
                            child: TextField(
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
                                hintText: 'Search by..',
                                contentPadding: EdgeInsets.only(
                                  left: 15.0,
                                  bottom: 2.0,
                                  top: 2.0,
                                  //right: 25.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.minBlockVertical * 3.0,
                          ),
                          Text(
                            'Type you tip...',
                            style: kSmallTextStyle.copyWith(
                              color: Color(0xFFB2B2B2),
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.minBlockVertical,
                          ),
                          Container(
                            width: double.infinity,
                            child: TextField(
                              maxLength: 160,
                              maxLines: 10,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                    color: kSecondaryBorder,
                                    width: 2.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                    color: kSecondaryBorder,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                    color: kSecondaryBorder,
                                    width: 2.0,
                                  ),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(
                                    color: kSecondaryBorder,
                                    width: 2.0,
                                  ),
                                ),
                                hintText: 'Type here...',
                                contentPadding: EdgeInsets.only(
                                  left: 15.0,
                                  bottom: 10.0,
                                  top: 10.0,
                                  //right: 25.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.minBlockVertical * 4.0,
                          ),
                          SolidButton(
                            text: 'Send Now',
                            textColor: kWhiteColor,
                            onPressed: () {
                              // Dialogs.showLoginDialog();
                            },
                          ),
                          SizedBox(
                            height: SizeConfig.minBlockVertical,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Radio(
                                      value: true,
                                      groupValue: '1',
                                      onChanged: (value) {},
                                    ),
                                    Text('Send Now')
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
                                    Text('Save Tip')
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
                                    Text('Send later at'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.minBlockHorizontal * 2.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 500.0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 10.0,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Saved Tip',
                                  style: kMainTextStyle.copyWith(
                                    fontSize: 30.0,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SolidButton(
                                  text: 'Edit',
                                  textColor: kWhiteColor,
                                  onPressed: () {
                                    // Dialogs.showLoginDialog();
                                  },
                                  width: 100.0,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical,
                            ),
                            Container(
                              color: kWhiteColor,
                              child: Row(
                                children: [
                                  Container(
                                    height: 50.0,
                                    width: 5.0,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.minBlockHorizontal,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        'Thank you for registering for Antenatal care in Lagos Island Maternity Hospital. We are committed to making it a satisfactory experience for you.',
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
                  ],
                ),
                SizedBox(
                  height: SizeConfig.minBlockVertical * 3.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

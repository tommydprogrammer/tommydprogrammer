import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderz/core/input_box.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/solid_button.dart';
import 'package:reminderz/core/style.dart';

class Dialogs {
  static Future<void> showLoadingDialog() {
    return Get.dialog(
      WillPopScope(
        // for testing, for now this will be true, should be changed to false later
        onWillPop: () async => true,
        child: SimpleDialog(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          children: <Widget>[
            (Platform.isIOS)
                ? Center(
                    child: Theme(
                      data: ThemeData(
                        cupertinoOverrideTheme:
                            CupertinoThemeData(brightness: Brightness.dark),
                      ),
                      child: CupertinoActivityIndicator(
                        radius: 18,
                        animating: true,
                      ),
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(
                      backgroundColor: kPrimaryColor,
                      strokeWidth: 1.3,
                    ),
                  ),
          ],
        ),
      ),
      barrierDismissible: true,
      // barrierColor: Color(0xFF113E82).withOpacity(0.70),
    );
  }

  static Future<void> showLoginDialog() {
    return Get.dialog(
      WillPopScope(
        // for testing, for now this will be true, should be changed to false later
        onWillPop: () async => true,
        child: BackdropFilter(
          child: SimpleDialog(
            backgroundColor: kWhiteColor,
            contentPadding: EdgeInsets.zero,
            insetPadding: EdgeInsets.zero,
            titlePadding: EdgeInsets.zero,
            children: [
              Container(
                width: 700.0,
                height: 600.0,
                padding: EdgeInsets.zero,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/auth/login.png',
                        height: 600.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(
                            40.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Login',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300,
                                  color: kBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 2.0,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Not yet registered? ',
                                  style: kSmallTextStyle.copyWith(
                                    fontSize: 12.0,
                                    color: kBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Sign Up Now',
                                      style: kSmallTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 15.0,
                              ),
                              Text(
                                'Email Address or User ID',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                  color: kBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical,
                              ),
                              InputBox(
                                validator: (value) {
                                  Pattern pattern =
                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                  RegExp myReg = new RegExp(pattern);
                                  if (value.trim().isEmpty)
                                    return 'Email cannot be empty';
                                  if (value.trim().length < 4)
                                    return 'Invalid email supplied';
                                  if (!myReg.hasMatch(value.trim()))
                                    return 'Invalid email supplied';
                                  return null;
                                },
                                borderSide: BorderSide(
                                  color: kSecondaryBorder,
                                ),
                                leadingIcon: Icons.email_outlined,
                                labelText: '',
                                hintText: '',
                                inputType: TextInputType.emailAddress,
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 5.0,
                              ),
                              Text(
                                'Password',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                  color: kBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical,
                              ),
                              InputBox(
                                validator: (value) {
                                  if (value.trim().isEmpty)
                                    return 'Password cannot be empty';
                                  if (value.trim().length < 6)
                                    return 'Password cannot be less than 6 characters';
                                  return null;
                                },
                                borderSide: BorderSide(
                                  color: kSecondaryBorder,
                                ),
                                leadingIcon: Icons.lock_outline,
                                labelText: '',
                                hintText: '',
                                isPassword: true,
                                icon: Icons.remove_red_eye_outlined,
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical,
                              ),
                              Text(
                                'Forgot Password?',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 10.0,
                              ),
                              SolidButton(
                                text: 'Login',
                                textColor: kWhiteColor,
                                onPressed: () {
                                  Get.toNamed('/home');
                                  // Dialogs.showLoginDialog();
                                },
                                width: double.infinity,
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 10.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            // elevation: 20.0,
          ),
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        ),
      ),
      barrierDismissible: true,
      barrierColor: Color(0xFF000000).withOpacity(0.60),
      useSafeArea: true,
    );
  }

  static Future<void> showLoginOptionDialog() {
    return Get.dialog(
      WillPopScope(
        // for testing, for now this will be true, should be changed to false later
        onWillPop: () async => true,
        child: BackdropFilter(
          child: SimpleDialog(
            backgroundColor: kWhiteColor,
            contentPadding: EdgeInsets.zero,
            insetPadding: EdgeInsets.zero,
            titlePadding: EdgeInsets.zero,
            children: [
              Container(
                width: 700.0,
                height: 600.0,
                padding: EdgeInsets.zero,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/auth/register.png',
                        height: 600.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(
                            40.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Who are you\nLogging in as?',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w300,
                                  color: kBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 12.0,
                              ),
                              Text(
                                'This page is for prototyping\npurposes only',
                                style: kSmallTextStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: kBlackColor,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 15.0,
                              ),
                              // Text(
                              //   'Email Address or User ID',
                              //   style: kSmallTextStyle.copyWith(
                              //     fontSize: 12.0,
                              //     fontWeight: FontWeight.w300,
                              //     color: kBlackColor,
                              //   ),
                              // ),
                              SolidButton(
                                text: 'Font Desk Officer',
                                textColor: kWhiteColor,
                                onPressed: () {
                                  Get.toNamed('/home');
                                  // Dialogs.showLoginDialog();
                                },
                                width: double.infinity,
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 3.0,
                              ),
                              SolidButton(
                                text: 'Super Admin',
                                textColor: kWhiteColor,
                                onPressed: () {
                                  Get.toNamed('/admin');
                                  // Dialogs.showLoginDialog();
                                },
                                width: double.infinity,
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 10.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            // elevation: 20.0,
          ),
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        ),
      ),
      barrierDismissible: true,
      barrierColor: Color(0xFF000000).withOpacity(0.60),
      useSafeArea: true,
    );
  }

  static Future<void> showRegisterDialog() {
    return Get.dialog(
      WillPopScope(
        // for testing, for now this will be true, should be changed to false later
        onWillPop: () async => true,
        child: BackdropFilter(
          child: Dialog(
            backgroundColor: kWhiteColor,
            child: Container(
              width: 700.0,
              height: 600.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/auth/register.png',
                      height: 600.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(
                          40.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign Up',
                              style: kSmallTextStyle.copyWith(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w300,
                                color: kBlackColor,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Already registered? ',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 12.0,
                                  color: kBlackColor,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Login',
                                    style: kSmallTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical * 15.0,
                            ),
                            Text(
                              'Business Name',
                              style: kSmallTextStyle.copyWith(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                                color: kBlackColor,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical,
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
                              labelText: '',
                              hintText: '',
                              inputType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical * 2.0,
                            ),
                            Text(
                              'Email Address',
                              style: kSmallTextStyle.copyWith(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                                color: kBlackColor,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical,
                            ),
                            InputBox(
                              validator: (value) {
                                Pattern pattern =
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                RegExp myReg = new RegExp(pattern);
                                if (value.trim().isEmpty)
                                  return 'Email cannot be empty';
                                if (value.trim().length < 4)
                                  return 'Invalid email supplied';
                                if (!myReg.hasMatch(value.trim()))
                                  return 'Invalid email supplied';
                                return null;
                              },
                              borderSide: BorderSide(
                                color: kSecondaryBorder,
                              ),
                              leadingIcon: Icons.email_outlined,
                              labelText: '',
                              hintText: '',
                              inputType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical * 2.0,
                            ),
                            Text(
                              'Password',
                              style: kSmallTextStyle.copyWith(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                                color: kBlackColor,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical,
                            ),
                            InputBox(
                              validator: (value) {
                                if (value.trim().isEmpty)
                                  return 'Password cannot be empty';
                                if (value.trim().length < 6)
                                  return 'Password cannot be less than 6 characters';
                                return null;
                              },
                              borderSide: BorderSide(
                                color: kSecondaryBorder,
                              ),
                              leadingIcon: Icons.lock_outline,
                              labelText: '',
                              hintText: '',
                              isPassword: true,
                              icon: Icons.remove_red_eye_outlined,
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical * 10.0,
                            ),
                            SolidButton(
                              text: 'Proceed',
                              textColor: kWhiteColor,
                              onPressed: () {
                                Navigator.of(Get.overlayContext).pop();
                                Dialogs.showRegisterSuccessDialog();
                              },
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: SizeConfig.minBlockVertical * 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            elevation: 20.0,
          ),
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        ),
      ),
      barrierDismissible: true,
      // barrierColor: Color(0xFF113E82).withOpacity(0.70),
    );
  }

  static Future<void> showRegisterSuccessDialog() {
    return Get.dialog(
      WillPopScope(
        // for testing, for now this will be true, should be changed to false later
        onWillPop: () async => true,
        child: BackdropFilter(
          child: SimpleDialog(
            backgroundColor: kWhiteColor,
            contentPadding: EdgeInsets.zero,
            insetPadding: EdgeInsets.zero,
            titlePadding: EdgeInsets.zero,
            children: [
              Container(
                width: 700.0,
                height: 600.0,
                padding: EdgeInsets.zero,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/auth/register.png',
                        height: 600.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(
                            40.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign Up',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300,
                                  color: kBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Already registered? ',
                                  style: kSmallTextStyle.copyWith(
                                    fontSize: 12.0,
                                    color: kBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Login?',
                                      style: kSmallTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 10.0,
                              ),
                              Text(
                                'Kindly click the verification link sent\nto your email address to continue',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                  color: kBlackColor,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 3.0,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Didn\'t get a link?',
                                  style: kSmallTextStyle.copyWith(
                                    fontSize: 12.0,
                                    color: kBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Resen link',
                                      style: kSmallTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.minBlockVertical * 10.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            // elevation: 20.0,
          ),
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        ),
      ),
      barrierDismissible: true,
      barrierColor: Color(0xFF000000).withOpacity(0.60),
      useSafeArea: true,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/style.dart';

class SideMenu extends StatelessWidget {
  final String activeName;
  final isAdmin;
  SideMenu({this.activeName, this.isAdmin});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: kPrimaryColor),
        child: Column(
          children: [
            DrawerHeader(title: 'Reminderz', imageUrl: ''),
            DrawerTile(
              title: 'Dashboard',
              onPressed: () => Get.toNamed('/home'),
              imageUrl: 'assets/svgs/dashboard.svg',
              active: activeName == 'dashboard',
            ),
            if (!isAdmin) ...[
              DrawerTile(
                title: 'Appointees',
                onPressed: () => Get.toNamed('/appointee'),
                imageUrl: 'assets/svgs/appointees.svg',
                active: activeName == 'appointee',
              ),
              DrawerTile(
                title: 'Appointments',
                onPressed: () => Get.toNamed('/appointment'),
                imageUrl: 'assets/svgs/appointments.svg',
                active: activeName == 'appointment',
              ),
              DrawerTile(
                title: 'Tips',
                onPressed: () => Get.toNamed('/tip'),
                imageUrl: 'assets/svgs/tip.svg',
                active: activeName == 'tip',
              ),
            ] else ...[
              DrawerTile(
                title: 'Client',
                onPressed: () => Get.toNamed('/client'),
                imageUrl: 'assets/svgs/appointees.svg',
                active: activeName == 'client',
              ),
              DrawerTile(
                title: 'Users',
                onPressed: () => Get.toNamed('/user'),
                imageUrl: 'assets/svgs/appointments.svg',
                active: activeName == 'user',
              ),
            ],
            DrawerTile(
              title: 'Settings',
              onPressed: () => Get.toNamed('/setting'),
              imageUrl: 'assets/svgs/settings.svg',
              active: activeName == 'setting',
            ),
            Spacer(),
            DrawerTile(
              title: 'Logout',
              onPressed: () => Get.offAllNamed('/'),
              imageUrl: 'assets/svgs/logout.svg',
              active: activeName == 'logout',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerHeader extends StatelessWidget {
  final VoidCallback onPressed;
  final String imageUrl;
  final String title;
  final bool active;
  const DrawerHeader(
      {this.onPressed, this.imageUrl, this.title, this.active: false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(
          15.0,
        ),
        margin: EdgeInsets.only(bottom: 10.0),
        child: Row(
          children: [
            // SvgPicture.asset(
            //   imageUrl,
            //   color: kWhiteColor
            // ),
            // SizedBox(
            //   width: SizeConfig.minBlockHorizontal,
            // ),
            Text(
              title,
              style: kSmallTextStyle.copyWith(
                color: kWhiteColor,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final VoidCallback onPressed;
  final String imageUrl;
  final String title;
  final bool active;
  const DrawerTile(
      {this.onPressed, this.imageUrl, this.title, this.active: false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(
          15.0,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              imageUrl,
              color: active ? kWhiteColor : kWhiteColor.withOpacity(0.5),
              height: active ? 20.0 : 15.0,
              width: active ? 20.0 : 15.0,
            ),
            SizedBox(
              width: SizeConfig.minBlockHorizontal,
            ),
            Text(
              title,
              style: kSmallTextStyle.copyWith(
                color: active ? kWhiteColor : kWhiteColor.withOpacity(0.5),
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

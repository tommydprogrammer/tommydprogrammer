import 'package:get/get.dart';
import 'package:reminderz/views/admin/admin_screen.dart';
import 'package:reminderz/views/appointee/appointee_screen.dart';
import 'package:reminderz/views/appointment/appointment_details_screen.dart';
import 'package:reminderz/views/appointment/appointment_screen.dart';
import 'package:reminderz/views/client/client_screen.dart';
import 'package:reminderz/views/home/home_screen.dart';
import 'package:reminderz/views/landing/about_us_screen.dart';
import 'package:reminderz/views/landing/landing_screen.dart';
import 'package:reminderz/views/settings/settings_screen.dart';
import 'package:reminderz/views/tips/tips_screen.dart';
import 'package:reminderz/views/user/user_screen.dart';

class Router {
  static List<GetPage<dynamic>> getPages = [
    GetPage(name: '/', page: () => LandingScreen()),
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/appointment',
      page: () => AppointMentScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/appointee',
      page: () => AppointeeScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/tip',
      page: () => TipsScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/setting',
      page: () => SettingsScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/user',
      page: () => UserScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/client',
      page: () => ClientScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/appointment/details',
      page: () => AppointmentDetailsScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/admin',
      page: () => AdminScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/contact-us',
      page: () => AboutUsScreen(),
      transition: Transition.fade,
    ),
  ];
}

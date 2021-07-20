import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderz/core/style.dart';
import 'package:reminderz/router/router.dart' as MyRouter;
// import 'nonweb.dart' if (dart.library.html) 'goweb.dart';

void main() {
  // configureApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reminderz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Lato',
            ),
        switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.all(kSecondaryColor2),
          thumbColor: MaterialStateProperty.all(kPrimaryColor),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(kPrimaryColor),
        ),
        appBarTheme: AppBarTheme(
          color: kScaffoldColor,
        ),
      ),
      initialRoute: '/',
      // unknownRoute: GetPage(name: '/error', page: () => UnknownScreen()),
      defaultTransition: Transition.zoom,
      getPages: MyRouter.Router.getPages,
    );
  }
}

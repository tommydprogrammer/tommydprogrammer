import 'package:reminderz/core/app_config.dart';

class Constants {
  static const String REGISTER = AppConfig.app_endpoint_url + 'auth/register';

  static const String LOGIN = AppConfig.app_endpoint_url + 'auth/login';

  static const String CHANGE_PASSWORD =
      AppConfig.app_endpoint_url + 'auth/customer/change-password';

  static const String FORGOT_PASSWORD =
      AppConfig.app_endpoint_url + 'auth/customer/forgot-password';

  static const String VIEW_PROFILE =
      AppConfig.app_endpoint_url + 'customer/settings/view-profile';
}

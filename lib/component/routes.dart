import 'package:easy_codebase/pages/home/home_page.dart';
import 'package:easy_codebase/pages/main/main_page.dart';
import 'package:easy_codebase/pages/register/register_page.dart';
import 'package:fluro/fluro.dart';

import '../pages/login/login_page.dart';
import '../pages/onboard/on_board_page.dart';

/// Utility Class for Route with Navigation 2.0
class EasyRouter {
  static late final FluroRouter router;

  static void defineRouter() {
    router.define('/', handler: OnBoardPage.route);
    router.define('/dashboard', handler: MainPage.route);
    router.define('/login', handler: LoginPage.route);
    router.define('/register', handler: RegisterPage.route);
  }
}

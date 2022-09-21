import 'package:easy_codebase/pages/home/home_page.dart';
import 'package:fluro/fluro.dart';

/// Utility Class for Route with Navigation 2.0
class EasyRouter {
  static late final FluroRouter router;

  static void defineRouter() {
    router.define('/', handler: MyHomePage.route);
  }
}

import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/view/sign_in_screen.dart';
import 'package:greengrocer/src/pages/base/base_screen.dart';
import 'package:greengrocer/src/pages/home/binding/home_binding.dart';
import 'package:greengrocer/src/pages/splash/splash_screen.dart';

import '../pages/auth/view/sign_up_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(name: PagesRoutes.splashRoute, page: () => SplashScreen()),
    GetPage(name: PagesRoutes.signInRoute, page: () => SignScreen()),
    GetPage(name: PagesRoutes.signUpRoute, page: () => SignUpScreen()),
    GetPage(name: PagesRoutes.baseRoute, page: () => BaseScreen()
    , bindings: [
        HomeBinding(),
    ]),
  ];
}

abstract class PagesRoutes {
  static const String signInRoute = "/signin";
  static const String splashRoute = "/splash";
  static const String signUpRoute = "/signup";
  static const String baseRoute = "/";
}

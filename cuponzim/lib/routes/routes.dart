
import 'package:Cuponzim/pages/contact/contact.dart';
import 'package:Cuponzim/pages/favorite/favorite_store.dart';
import 'package:Cuponzim/pages/home/home.dart';
import 'package:Cuponzim/pages/settings/settings.dart';
import 'package:Cuponzim/pages/splash/splash.dart';
import 'package:Cuponzim/routes/app_routes.dart';

import 'package:flutter/widgets.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.SPLASH_PAGE: (tcx) => Splash(),
    AppRoutes.HOME_PAGE: (tcx) => Home(),
     AppRoutes.SETTINGS_PAGE: (tcx) => Settings(),
     AppRoutes.TALK_PAGE: (tcx) => Contact(),
     AppRoutes.FAVORITE_PAGE: (tcx) => Favorite()
  };
}

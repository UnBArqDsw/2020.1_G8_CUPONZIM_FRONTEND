
import 'package:Cuponzim/pages/splash/splash.dart';
import 'package:Cuponzim/routes/app_routes.dart';

import 'package:flutter/widgets.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.SPLASH_PAGE: (tcx) => Splash()
  };
}

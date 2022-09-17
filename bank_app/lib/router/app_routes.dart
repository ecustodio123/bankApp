import 'package:bank_app/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'signin';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'welcome' : (BuildContext context) => HomeScreen()});
    appRoutes.addAll({'signin' : (BuildContext context) => SignInScreen()});

    // for (final option in menuOptions) {
    //   appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    // }

    return appRoutes;
  }

}
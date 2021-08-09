import 'package:flutter/material.dart';
import 'package:flutter_localization/app/pages/about.dart';
import 'package:flutter_localization/app/pages/home_page.dart';
import 'package:flutter_localization/app/pages/not_found_page.dart';
import 'package:flutter_localization/app/pages/settings.dart';
import 'package:flutter_localization/app/routes/routes_names.dart';

class CostumeRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => AboutPage());
      case settingRoute:
        return MaterialPageRoute(builder: (_) => SettingsPage());
    }
    return MaterialPageRoute(builder: (_) => NotFoundPage());
  }
}

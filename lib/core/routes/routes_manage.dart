import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monirul_islam_portfolio/common/widgets/responsive_screen_helper.dart';
import 'package:monirul_islam_portfolio/core/routes/routes_name.dart';

class RoutesManage {
  RoutesManage._();

  /* <<--------->> routes <<---------->> */
  static Map<String, WidgetBuilder> _routes(Object? args) => {
        RoutesName.responsiveScreenHelper: (context) =>
            const ResponsiveScreenHelper(),
      };

  /* <<--------->> on generate routes <<---------->> */
  static Route<dynamic> onGenerateRoutes(RouteSettings routeSettings) {
    final builder = _routes(routeSettings.arguments)[routeSettings.name];

    if (builder != null) {
      return MaterialPageRoute(
        builder: (context) => builder(context),
      );
    } else {
      return MaterialPageRoute(
        builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("404 - Page Not Found!"),
            ),
          );
        },
      );
    }
  }
}

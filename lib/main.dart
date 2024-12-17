import 'package:flutter/material.dart';
import 'package:monirul_islam_portfolio/core/routes/routes_manage.dart';
import 'package:monirul_islam_portfolio/core/routes/routes_name.dart';
import 'package:monirul_islam_portfolio/core/themes/theme_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyWebApp());
}

class MyWebApp extends StatelessWidget {
  const MyWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Monirul Islam",
      themeMode: ThemeMode.dark,
      theme: ThemeConfig.lightThemeData,
      darkTheme: ThemeConfig.darkThemeData,
      builder: (context, child) {
        return ResponsiveWrapper.builder();
      },
      initialRoute: RoutesName.responsiveScreenHelper,
      onGenerateRoute: RoutesManage.onGenerateRoutes,

    );
  }
}

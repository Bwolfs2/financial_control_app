import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'pages/dashboard/dashboard_module.dart';
import 'routes.dart';
import 'shared/locale/locales.dart';
import 'shared/styles/theme_style.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finacial Control App',
      theme: AppTheme().themeData(),
      routes: AppRoutes().routeMain(),
      onGenerateRoute: (settings) => AppRoutes().onGenerateRoute(settings),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        const AppLocaleDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt'),
        const Locale('en'),
      ],
    );
  }
}

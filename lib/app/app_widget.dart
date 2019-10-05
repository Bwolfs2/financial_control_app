import 'package:flutter/material.dart';

import 'pages/dashboard/dashboard_module.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finacial Control App',
      theme: ThemeData(
          primaryColor: Colors.green[500], accentColor: Colors.blue[500]),
      home: DashboardModule(),
    );
  }
}

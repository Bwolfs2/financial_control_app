import 'package:financial_control_app/app/shared/locale/locales.dart';
import 'package:flutter/material.dart';

import 'float_button/float_button_widget.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.of(context).getText("dashboard")),
      ),
      body: Column(
        children: <Widget>[],
      ),
      
      floatingActionButton: FloatButtonWidget(buildContext: context,)
    );
  }
}

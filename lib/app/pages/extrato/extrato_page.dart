import 'package:financial_control_app/app/shared/locale/locales.dart';
import 'package:flutter/material.dart';

class ExtratoPage extends StatefulWidget {
  @override
  _ExtratoPageState createState() => _ExtratoPageState();
}

class _ExtratoPageState extends State<ExtratoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.of(context).getText("extratos")),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}

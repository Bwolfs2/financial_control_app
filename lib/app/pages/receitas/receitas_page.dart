import 'package:financial_control_app/app/shared/locale/locales.dart';
import 'package:flutter/material.dart';

class ReceitasPage extends StatefulWidget {
  @override
  _ReceitasPageState createState() => _ReceitasPageState();
}

class _ReceitasPageState extends State<ReceitasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.of(context).getText("receitas")),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}

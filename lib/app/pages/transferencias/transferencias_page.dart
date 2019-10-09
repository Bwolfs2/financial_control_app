import 'package:financial_control_app/app/shared/locale/locales.dart';
import 'package:flutter/material.dart';

class TransferenciasPage extends StatefulWidget {
  @override
  _TransferenciasPageState createState() => _TransferenciasPageState();
}

class _TransferenciasPageState extends State<TransferenciasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.of(context).getText("transferencias")),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}

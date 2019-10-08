import 'package:flutter/material.dart';
import 'package:radial_button/widget/circle_floating_button.dart';

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
        title: Text("Dashboard"),
      ),
      body: Column(
        children: <Widget>[
          Text("Teste");
        ],
      ),
      
      floatingActionButton: FloatButtonWidget()
    );
  }
}

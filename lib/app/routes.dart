import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/dashboard/dashboard_module.dart';
import 'pages/despesas/despesas_module.dart';
import 'pages/extrato/extrato_module.dart';
import 'pages/receitas/receitas_module.dart';
import 'pages/transferencias/transferencias_module.dart';

class AppRoutes {
  Map<String, WidgetBuilder> routeMain() {
    return {
      '/': (context) => DashboardModule(),
    };
  }

  onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/despesas':
        return CupertinoPageRoute(builder: (context) => DespesasModule());
      case '/extrato':
        return CupertinoPageRoute(builder: (context) => ExtratoModule());
      case '/receitas':
        return CupertinoPageRoute(builder: (context) => ReceitasModule());
      case '/transferencias':
        return CupertinoPageRoute(builder: (context) => TransferenciasModule());
    }
  }
}

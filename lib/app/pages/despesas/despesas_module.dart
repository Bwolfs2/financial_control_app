import 'package:financial_control_app/app/pages/despesas/despesas_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:financial_control_app/app/pages/despesas/despesas_page.dart';

class DespesasModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => DespesasBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => DespesasPage();

  static Inject get to => Inject<DespesasModule>.of();
}

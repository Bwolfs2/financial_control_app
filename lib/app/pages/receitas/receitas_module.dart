import 'package:financial_control_app/app/pages/receitas/receitas_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:financial_control_app/app/pages/receitas/receitas_page.dart';

class ReceitasModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ReceitasBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => ReceitasPage();

  static Inject get to => Inject<ReceitasModule>.of();
}

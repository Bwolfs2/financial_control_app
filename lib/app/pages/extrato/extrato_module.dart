import 'package:financial_control_app/app/pages/extrato/extrato_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:financial_control_app/app/pages/extrato/extrato_page.dart';

class ExtratoModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ExtratoBloc()),      
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => ExtratoPage();

  static Inject get to => Inject<ExtratoModule>.of();
}

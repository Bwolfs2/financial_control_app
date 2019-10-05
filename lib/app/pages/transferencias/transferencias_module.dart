import 'package:financial_control_app/app/pages/transferencias/transferencias_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:financial_control_app/app/pages/transferencias/transferencias_page.dart';

class TransferenciasModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => TransferenciasBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => TransferenciasPage();

  static Inject get to => Inject<TransferenciasModule>.of();
}

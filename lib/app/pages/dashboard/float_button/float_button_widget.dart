import 'package:financial_control_app/app/pages/despesas/despesas_module.dart';
import 'package:financial_control_app/app/pages/extrato/extrato_module.dart';
import 'package:financial_control_app/app/pages/receitas/receitas_module.dart';
import 'package:financial_control_app/app/pages/transferencias/transferencias_module.dart';
import 'package:flutter/material.dart';
import 'package:radial_button/widget/circle_floating_button.dart';

class FloatButtonWidget extends StatefulWidget {
  @override
  _FloatButtonWidgetState createState() => _FloatButtonWidgetState();
}

class _FloatButtonWidgetState extends State<FloatButtonWidget> {
  final GlobalKey<CircleFloatingButtonState> key01 =
      GlobalKey<CircleFloatingButtonState>();

  fechar() {
    key01.currentState.close();
  }

  List<Widget> itemsActionBar;

  @override
  void initState() {
    itemsActionBar = [
      FloatingActionButton(
        heroTag: UniqueKey(),
        tooltip: "Extrato",
        backgroundColor: Colors.orangeAccent,
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return ExtratoModule();
              },
              fullscreenDialog: true,
            ),
          );
          fechar();
        },
        child: Icon(Icons.account_balance),
        mini: true,
      ),
      FloatingActionButton(
        heroTag: UniqueKey(),
        tooltip: "Transferência",
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return TransferenciasModule();
              },
              fullscreenDialog: true,
            ),
          );
          fechar();
        },
        child: Icon(Icons.swap_vert),
        mini: true,
      ),
      FloatingActionButton(
        heroTag: UniqueKey(),
        tooltip: "Receita",
        backgroundColor: Colors.greenAccent,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return ReceitasModule();
              },
              fullscreenDialog: true,
            ),
          );
          fechar();
        },
        child: Icon(Icons.add),
        mini: true,
      ),
      FloatingActionButton(
        heroTag: UniqueKey(),
        tooltip: "Despesa",
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return DespesasModule();
              },
              fullscreenDialog: true,
            ),
          );
          fechar();
        },
        child: Icon(Icons.remove),
        mini: true,
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CircleFloatingButton.floatingActionButton(
      key: key01,
      items: itemsActionBar,
      color: Colors.blueAccent,
      icon: Icons.add,
      duration: Duration(milliseconds: 500),
      curveAnim: Curves.easeInOut,
    );
  }
}

import 'package:financial_control_app/app/shared/locale/locales.dart';
import 'package:flutter/material.dart';
import 'package:radial_button/widget/circle_floating_button.dart';

class FloatButtonWidget extends StatefulWidget {
  final BuildContext buildContext;

  const FloatButtonWidget({Key key,@required this.buildContext}) : super(key: key);
  @override
  _FloatButtonWidgetState createState() =>
      _FloatButtonWidgetState(buildContext);
}

class _FloatButtonWidgetState extends State<FloatButtonWidget> {
  final GlobalKey<CircleFloatingButtonState> key01 =
      GlobalKey<CircleFloatingButtonState>();
  BuildContext buildContext;
  _FloatButtonWidgetState(this.buildContext);

  fechar() {
    key01.currentState.close();
  }

  List<Widget> itemsActionBar;

  @override
  void initState() {
    itemsActionBar = [
      FloatingActionButton(
        heroTag: UniqueKey(),
        tooltip: AppLocale.of(buildContext).getText("extratos"),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
          Navigator.of(context).pushNamed("/extrato");
          fechar();
        },
        child: Icon(Icons.account_balance),
        mini: true,
      ),
      FloatingActionButton(
        heroTag: UniqueKey(),
        tooltip: AppLocale.of(buildContext).getText("transferencias"),
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          Navigator.of(context).pushNamed("/transferencias");
          fechar();
        },
        child: Icon(Icons.swap_vert),
        mini: true,
      ),
      FloatingActionButton(
        heroTag: UniqueKey(),
        tooltip: AppLocale.of(buildContext).getText("receitas"),
        backgroundColor: Colors.greenAccent,
        onPressed: () {
          Navigator.of(context).pushNamed("/receitas");
          fechar();
        },
        child: Icon(Icons.add),
        mini: true,
      ),
      FloatingActionButton(
        heroTag: UniqueKey(),
        tooltip: AppLocale.of(buildContext).getText("despesas"),
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.of(context).pushNamed("/despesas");
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

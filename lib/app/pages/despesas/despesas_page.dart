import 'package:financial_control_app/app/shared/locale/locales.dart';
import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';

class DespesasPage extends StatefulWidget {
  @override
  _DespesasPageState createState() => _DespesasPageState();
}

class _DespesasPageState extends State<DespesasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.of(context).getText("despesas")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            child: Column(
              children: <Widget>[
                //  Valor, Tipo de Moeda, Descricao, Categoria, Carteira/Conta, Pago
                TextField(
                  decoration: InputDecoration(labelText: "Valor"),
                ),

                TextField(
                  decoration: InputDecoration(labelText: "Tipo Moeda"),
                ),

                TextField(
                  decoration: InputDecoration(labelText: "Descrição"),
                ),
                Row(
                  children: <Widget>[
                    Text("Categoria"),
                  ],
                ),
                FindDropdown(
                  items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
                  //  label: "Categoria",
                  onChanged: (String item) => print(item),
                  selectedItem: "Brasil",
                  validate: (String item) {
                    if (item == null)
                      return "Required field";
                    else if (item == "Brasil")
                      return "Invalid item";
                    else
                      return null; //return null to "no error"
                  },
                ),

                TextField(
                  decoration: InputDecoration(labelText: "Conta"),
                ),

                TextField(
                  decoration: InputDecoration(labelText: "Pago"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

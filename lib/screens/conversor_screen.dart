import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //aqui todo aqui dentro se renderiza nuevamente
    num dato;
    var txtUnitToConvertController = TextEditingController();

    final txtUnit = TextFormField(
        controller: txtUnitToConvertController,
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            hintText: "convertir.....",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))));

    final btnCelsius = ElevatedButton(
      onPressed: () {
        dato = num.parse(txtUnitToConvertController.text);
        num tF = (((9 * dato) / 5) + 32);

        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: const Text("RESULTADO"),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[Text('Equivale a F°: $tF')],
                    ),
                  ),
                ),
            barrierDismissible: true);
      },
      child: Text("convertir a C°"),
    );
    final btnFahrenheit = ElevatedButton(
        onPressed: () {
          dato = num.parse(txtUnitToConvertController.text);
          num tC = (((dato - 32) * 5) / 9);

          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: const Text("RESULTADO"),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[Text('Equivale a C°: $tC')],
                      ),
                    ),
                  ),
              barrierDismissible: true);
        },
        child: Text("convertir a F°"));
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor de temperatura"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.fill)),
          ),
          Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    txtUnit,
                    SizedBox(height: 5),
                    btnCelsius,
                    SizedBox(
                      height: 5,
                    ),
                    btnFahrenheit,
                  ],
                  shrinkWrap: true,
                ),
              )),
        ],
      )),
    );
  }
}

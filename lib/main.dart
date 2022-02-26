import 'package:flutter/material.dart';
import 'package:flutter_application_conversor_practice_2/screens/conversor_screen.dart';

void main() {
  runApp(const Conversor());
}

class Conversor extends StatelessWidget {
  const Conversor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

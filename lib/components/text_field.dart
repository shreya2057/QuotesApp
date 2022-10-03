import 'package:flutter/material.dart';
import 'package:quotesapp/styles/decorations.dart';

class TextBox extends StatelessWidget {
  const TextBox({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    final currentLabel = label;
    return Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
        child: TextField(
          decoration: InputDecoration(
              labelText: currentLabel,
              labelStyle:
                  const TextStyle(color: Color.fromARGB(235, 172, 172, 173)),
              focusedBorder: authTextField,
              enabledBorder: authTextField),
        ));
  }
}

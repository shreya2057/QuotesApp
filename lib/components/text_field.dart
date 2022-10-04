import 'package:flutter/material.dart';
import 'package:quotesapp/styles/decorations.dart';

class TextBox extends StatelessWidget {
  const TextBox({Key? key, required this.label, required this.icon})
      : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final currentLabel = label;
    return Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
        child: TextField(
          // controller: TextEditingController(text: "Value"),
          decoration: InputDecoration(
              suffixIcon: Icon(
                icon,
                color: const Color.fromARGB(236, 123, 152, 241),
              ),
              labelText: currentLabel,
              labelStyle:
                  const TextStyle(color: Color.fromARGB(235, 172, 172, 173)),
              focusedBorder: authTextField,
              enabledBorder: authTextField),
        ));
  }
}

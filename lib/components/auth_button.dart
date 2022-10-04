import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton(
          onPressed: () {
            print("Hi");
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(236, 123, 152, 241))),
          child: Text(
            label,
            style: const TextStyle(fontSize: 18),
          )),
    ));
  }
}

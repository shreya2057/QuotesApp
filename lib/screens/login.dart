import 'package:flutter/material.dart';
import '../components/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              color: const Color.fromARGB(236, 123, 152, 241),
            ),
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              margin: const EdgeInsets.only(top: 100),
              color: const Color.fromARGB(255, 253, 254, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Color.fromARGB(236, 123, 152, 241),
                    ),
                  ),
                  const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(236, 123, 152, 241)),
                  )),
                  const TextBox(
                    label: "Email",
                  ),
                  const TextBox(
                    label: "Password",
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Login")),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

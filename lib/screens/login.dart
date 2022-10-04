import 'package:flutter/material.dart';
import 'package:quotesapp/components/auth_button.dart';
import 'package:quotesapp/components/cancel_button.dart';
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
                children: <Widget>[
                  const Cancel(),
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
                    icon: Icons.mail,
                  ),
                  const TextBox(
                    label: "Password",
                    icon: Icons.lock,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Color.fromARGB(236, 123, 152, 241),
                            ),
                          )),
                    ),
                  ),
                  const AuthButton(
                    label: "Login",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

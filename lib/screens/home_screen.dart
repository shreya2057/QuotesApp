import 'package:flutter/material.dart';
import 'package:quotesapp/screens/login.dart';
import 'package:quotesapp/screens/register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    String text = "Quotes App";
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const RegisterScreen();
                }));
              },
              child: Text("Next")),
        ],
      ),
    );
  }
}

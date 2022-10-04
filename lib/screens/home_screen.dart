import 'package:flutter/material.dart';
import 'package:quotesapp/screens/view_quotes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text("hi"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ViewQuotes()));
                },
                child: const Text("View Quotes"))
          ],
        ),
      ),
    );
  }
}

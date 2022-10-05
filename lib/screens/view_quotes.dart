import 'package:flutter/material.dart';
import 'package:quotesapp/components/appbar.dart';

class ViewQuotes extends StatelessWidget {
  const ViewQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const AppBars(
        title: "Quotes",
      ),
      body: Column(
        children: [
          const Card(),
          ElevatedButton(onPressed: () {}, child: const Text("New Quotes"))
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:quotesapp/components/appbar.dart';

import '../components/quotes_card.dart';

class ViewQuotes extends StatelessWidget {
  const ViewQuotes({super.key, required this.quote, required this.authorName});

  final String quote;
  final String authorName;

  @override
  Widget build(BuildContext context) {
    print(quote);
    return SafeArea(
        child: Scaffold(
      appBar: const AppBars(
        title: "Quotes",
      ),
      body: Column(
        children: [
          const Card(),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context, index) {
                return QuotesCard(quote: quote);
              }),
          ElevatedButton(onPressed: () {}, child: const Text("New Quotes"))
        ],
      ),
    ));
  }
}

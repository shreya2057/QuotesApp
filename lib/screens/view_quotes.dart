import 'package:flutter/material.dart';
import 'package:quotesapp/components/appbar.dart';

class ViewQuotes extends StatelessWidget {
  const ViewQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      appBar: AppBars(
        title: "Quotes",
      ),
    ));
  }
}

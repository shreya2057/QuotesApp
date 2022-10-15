import 'package:flutter/material.dart';

class QuotesCard extends StatelessWidget {
  const QuotesCard({
    Key? key,
    required this.quote,
  }) : super(key: key);

  final String quote;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(quote),
    );
  }
}

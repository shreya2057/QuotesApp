import 'package:flutter/material.dart';
import 'package:quotesapp/screens/view_quotes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //http get
  dynamic getData() async {
    var url = Uri.https('dummyjson.com', '/quotes', {'q': '{http}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      return 'Request failed with status: ${response.statusCode}.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text("hi"),
            ElevatedButton(
                onPressed: () async {
                  var data = await getData();
                  String quotes = data["quotes"][0]["quote"];
                  String authorName = data["quotes"][0]["author"];
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ViewQuotes(
                            quote: quotes,
                            authorName: authorName,
                          )));
                },
                child: const Text("View Quotes"))
          ],
        ),
      ),
    );
  }
}

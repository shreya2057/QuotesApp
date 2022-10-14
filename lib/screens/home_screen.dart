import 'package:flutter/material.dart';
import 'package:quotesapp/screens/view_quotes.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void getData() async {
    var url = Uri.https('dummyjson.com', '/quotes/1', {'q': '{http}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
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
                onPressed: () {
                  getData();
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

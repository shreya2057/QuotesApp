import 'package:flutter/material.dart';

class Cancel extends StatelessWidget {
  const Cancel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(
        Icons.cancel_outlined,
        color: Color.fromARGB(236, 123, 152, 241),
      ),
    );
  }
}

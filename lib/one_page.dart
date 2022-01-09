import 'package:flutter/material.dart';
import 'two_page.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const TwoPage(args: 'Teste',)),
            );
          },
          child: const Text("Ir para segunda page"),
        ),
      ),
    );
  }
}

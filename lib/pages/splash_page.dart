import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade900,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
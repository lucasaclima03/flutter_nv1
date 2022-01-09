import 'package:flutter/material.dart';
import 'package:flutter_nv1/two_page.dart';

import 'one_page.dart';

main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),      
      initialRoute: '/',
      routes: {
        '/': (_) => const OnePage(),
        '/twoPage' : (_) => const TwoPage()
      }
      
    );
  }
}



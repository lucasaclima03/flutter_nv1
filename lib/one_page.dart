import 'package:flutter/material.dart';
import 'package:flutter_nv1/widgets/custom_button_widget.dart';
import 'two_page.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          disable: false,
          onPressed: () {},
          title: 'Custom BTN',
        ),
      ),
    );
  }
}

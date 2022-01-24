import 'package:flutter/material.dart';
import 'package:flutter_nv1/components/login/custom_login_button_component.dart';
import 'package:flutter_nv1/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people,
                  size: MediaQuery.of(context).size.height * 0.3,
                ),
                TextField(
                  decoration: const InputDecoration(label: Text('Login')),
                  onChanged: _controller.setLogin,
                ),
                TextField(
                  decoration: const InputDecoration(
                    label: Text('Senha'),
                  ),
                  obscureText: true,
                  onChanged: _controller.setPass,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomLoginButtonComponent(loginController: _controller,),
              ],
            )));
  }
}

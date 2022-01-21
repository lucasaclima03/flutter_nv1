import 'package:flutter/material.dart';
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
                ValueListenableBuilder<bool>(
                  valueListenable: _controller.inLoader,
                  builder: (_, inLoader, __) => inLoader ? const CircularProgressIndicator() : ElevatedButton(
                    onPressed: () {
                      _controller.auth().then(
                        (result) {
                          if (result) {
                            print('success');
                          } else {
                            print('failed');
                          }
                        },
                      );
                    },
                    child: const Text('Login'),
                  ),
                ),
              ],
            )));
  }
}

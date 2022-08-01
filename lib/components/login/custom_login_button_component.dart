

import 'package:flutter/material.dart';
import 'package:projeto01/controllers/login_controlle.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({Key? key, required this.loginController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
                valueListenable: loginController.inLoader,
                builder: (_, inLoader, __) => inLoader
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          loginController.auth().then(
                            (result) {
                              if (result) {
                                Navigator.of(context).pushReplacementNamed('/');
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text('Falha ao realizar login'),
                                    duration: const Duration(seconds: 5),
                                    // action: SnackBarAction(
                                    //   label: 'ACTION',
                                    //   onPressed: () {},
                                    // ),
                                  ),
                                );
                              }
                            },
                          );
                        },
                        child: Text('Login'),
                      ),
              );
  }
}
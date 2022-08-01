import 'package:flutter/material.dart';
import 'package:projeto01/components/login/custom_login_button_component.dart';
import 'package:projeto01/controllers/login_controlle.dart';

import '../widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.people,
                size: MediaQuery.of(context).size.height * 0.3,
              ),
              CustomTextFieldWidget(
                label: 'Login',
                onChanged: _controller.setLogin,
              ),
              CustomTextFieldWidget(
                label: 'Passwo',
                obscureText: true,
                onChanged: _controller.setPass,
              ),
              SizedBox(height: 15),
              CustomLoginButtonComponent(
                loginController: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

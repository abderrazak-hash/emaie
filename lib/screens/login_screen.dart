import 'package:emaie/controllers/login_controller.dart';
import 'package:flutter/material.dart';

import 'package:emaie/widgets/emaie_button.dart';
import 'package:emaie/widgets/info_input.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(
        builder: (context, loginController, child) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/emaie.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const Expanded(flex: 1, child: Center()),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40.0,
                    horizontal: 40.0,
                  ),
                  child: Column(
                    children: [
                      InfoInput(
                        hintText: 'رقم الهاتف',
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InfoInput(
                        hintText: 'كلمة المرور',
                        obscureText: true,
                        letterSpacing: 2,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      EMaieButton(
                        onPressed: () {
                          loginController.login(context);
                        },
                        label: 'تسجيل الدخول',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

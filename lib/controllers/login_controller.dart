import 'package:flutter/material.dart';

import 'package:emaie/screens/order_screen.dart';

class LoginController extends ChangeNotifier {
  void login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OrderScreen(),
      ),
    );
  }
}

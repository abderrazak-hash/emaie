import 'package:emaie/controllers/login_controller.dart';
import 'package:emaie/screens/login_screen.dart';
// import 'package:emaie/screens/order_screen.dart';
import 'package:emaie/screens/order_screen2.dart';
import 'package:flutter/material.dart';

import 'package:emaie/constants.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Shamel',
      ),
      debugShowCheckedModeBanner: false,
      home: const EMaieApp(),
    ),
  );
}

class EMaieApp extends StatelessWidget {
  const EMaieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => LoginController()),
        ),
      ],
      builder: ((context, child) => const LoginScreen()),
    );
  }
}

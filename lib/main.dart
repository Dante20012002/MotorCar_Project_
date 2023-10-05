import 'package:flutter/material.dart';
import 'package:motocar_project/view/screens/home/home.dart';
import 'package:motocar_project/view/screens/login/login.dart';
import 'package:motocar_project/view/screens/user_data/user_data.dart';

void main() {
  runApp(const MotorCarHP());
}

class MotorCarHP extends StatelessWidget {
  const MotorCarHP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginView(),
        '/home': (context) => HomePage(),
        '/userdata': (context) => UserData(),
      },
    );
  }
}

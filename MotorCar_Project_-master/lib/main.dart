import 'package:flutter/material.dart';
import 'package:motocar_project/view/screens/home/home.dart';
import 'package:motocar_project/view/screens/login/login.dart';
import 'package:motocar_project/view/screens/login/register.dart';
import 'package:motocar_project/view/screens/messenger/chat.dart';
import 'package:motocar_project/view/screens/messenger/messenger.dart';
import 'package:motocar_project/view/screens/mis_datos/mis_dat.dart';
import 'package:motocar_project/view/screens/notifications/notifications.dart';
import 'package:motocar_project/view/screens/public_car/public_car.dart';
import 'package:motocar_project/view/screens/soporte/chat_soporte.dart';
import 'package:motocar_project/view/screens/sugerencias.dart/mensaje_sugerencia.dart';
import 'package:motocar_project/view/screens/user_data/user_data.dart';

void main() {
  runApp(const MotorCarHP());
}

class MotorCarHP extends StatelessWidget {
  const MotorCarHP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginView(),
        '/home': (context) => HomePage(),
        '/userdata': (context) => UserData(),
        '/register': (context) => RegisterView(),
        '/notifications': (context) => NotificationsView(),
        '/sugerencias': (context) => SugerenciasView(),
        '/messenger': (context) => MessengerView(),
        '/publicCar': (context) => PublicCar(),
        '/chat_soporte': (context) => ChatScreen_1(),
        '/mis_dat': (context) => DatosView()
      },
    );
  }
}

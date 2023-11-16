import 'package:flutter/material.dart';
import 'package:motocar_project/view/widgets/botommappbar.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';

class SugerenciasView extends StatefulWidget {
  const SugerenciasView({Key? key}) : super(key: key);

  @override
  State<SugerenciasView> createState() => _SugerenciasViewState();
}

class _SugerenciasViewState extends State<SugerenciasView> {
  final TextEditingController _sugerenciaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: gradientBox(),
          ),
          title: Text("Sugerencias"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Cuentanos cual es tu opinión dejando todos los detalles relacionados.",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _sugerenciaController,
                  maxLines: 5,
                  decoration: InputDecoration.collapsed(
                    hintText: "Habla de tu experiencia con MotorCar...",
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 162, 39, 30),
                ),
                child: Text("Enviar"),
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }
}

Widget buildNotificationItem(String message, String date) {
  return ListTile(
    title: Text(message),
  );
}

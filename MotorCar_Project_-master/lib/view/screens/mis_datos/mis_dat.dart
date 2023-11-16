import 'package:flutter/material.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';

class DatosView extends StatefulWidget {
  const DatosView({Key? key}) : super(key: key);

  @override
  State<DatosView> createState() => Datos1State();
}

class Datos1State extends State<DatosView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: gradientBox(),
          ),
          title: Text('Mis datos'),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      maxRadius: 30,
                      child: Icon(
                        Icons.person,
                        size: 45,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Pepito Maluma',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'pepitomaluma@gmail.com',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'Nombre: Pepito Maluma',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Celular: 32151581823',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Número de documento: 11515454561',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Direccion: Calle 85 # 56 - 913',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              // Más información debajo de este recuadro
              // Agrega aquí los widgets adicionales que mostrarán más información
            ],
          ),
        ),
      ),
    );
  }
}

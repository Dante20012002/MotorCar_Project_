import 'package:flutter/material.dart';
import 'package:motocar_project/view/widgets/botommappbar.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';
import 'package:motocar_project/view/widgets/my_custom_container.dart';

class PublicCar extends StatefulWidget {
  const PublicCar({super.key});

  @override
  State<PublicCar> createState() => _PublicCarState();
}

class _PublicCarState extends State<PublicCar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: gradientBox(),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(150),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: const Icon(
                  Icons.camera_alt,
                  size: 50,
                  color: Color.fromARGB(255, 214, 214, 214),
                ),
              ),
            ),
            elevatedButton(
                icon: Icon(Icons.photo),
                texto: 'Galeria',
                rute: '/home',
                context: context)
          ],
        ),
        bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:motocar_project/view/screens/public_car/PublicCar_vm.dart';
import 'package:motocar_project/view/widgets/botommappbar.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';
import 'package:motocar_project/view/widgets/my_custom_container.dart';
import 'package:image_picker/image_picker.dart';

class PublicCar extends StatefulWidget {
  const PublicCar({super.key});

  @override
  State<PublicCar> createState() => _PublicCarState();
}

class _PublicCarState extends State<PublicCar> {
  File? image;
  pickImage(ImageSource source) {
    AppImagePicker(source: source).pick(onPick: (File? image) {
      setState(() {
        this.image = image;
      });
    });
  }

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  pickImage(ImageSource.camera);
                },
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
              GestureDetector(
                onTap: () {
                  pickImage(ImageSource.gallery);
                },
                child:
                    elevatedButton(icon: Icon(Icons.photo), texto: 'Galeria'),
              ),
              if (image != null) Image.file(image!)
            ],
          ),
        ),
        bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }
}

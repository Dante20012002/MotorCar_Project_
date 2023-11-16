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
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: const Color.fromARGB(255, 230, 230, 230),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Icon(
                    Icons.photo,
                    size: 50,
                    color: Color.fromARGB(255, 214, 214, 214),
                  ),
                ),
              ),
              if (image != null)
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 300,
                  width: 300,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Image.file(image!),
                ),
            ],
          ),
        ),
        bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }
}

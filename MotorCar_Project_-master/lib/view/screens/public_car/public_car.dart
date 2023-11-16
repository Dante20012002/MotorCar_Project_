import 'package:flutter/material.dart';
import 'package:motocar_project/view/widgets/botommappbar.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';

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
        bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }
}

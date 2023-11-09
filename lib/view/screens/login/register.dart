import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:motocar_project/view/widgets/my_custom_textFormField.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _LoginViewState();
}

class _LoginViewState extends State<RegisterView> {
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 22, 0, 0),
              Color.fromARGB(255, 82, 5, 0),
            ],
            stops: [0.05, 0.8],
            begin: FractionalOffset.topCenter,
            end: Alignment(0, 0.05),
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                // mainAxisAlignment: MainAxisAlignment.center,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 50, bottom: 50),
                      margin:
                          const EdgeInsetsDirectional.symmetric(vertical: 50.0),
                      child: Image.asset(
                        'assets/logomotocar.png',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    //name
                    Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.01,
                        //vertical: 0.02,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        //vertical: size.width * 0.5,
                      ),
                      child: myCustomTextformFlied(
                        hintText: 'NAME',
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    //email
                    Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.01,
                        //vertical: 0.02,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        //vertical: size.width * 0.5,
                      ),
                      child: myCustomTextformFlied(
                        hintText: 'USER',
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    //Password
                    Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.01,
                        //vertical: 0.02,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        vertical: size.width * 0.025,
                      ),
                      child: myCustomTextformFlied(
                        obscuretext: passwordIcon,
                        hintText: 'PASSWORD',
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    //confirm password
                    Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.01,
                        //vertical: 0.02,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                      ),
                      child: myCustomTextformFlied(
                        obscuretext: passwordIcon,
                        hintText: 'CONFIRM PASSWORD',
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/home')},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.grey),
                            minimumSize: MaterialStateProperty.all(
                                Size(size.width / 2, 30))),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        vertical: 10,
                      ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      height: 3, // Grosor de la línea
                      color: Colors.black, // Color de la línea
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                              Size(size.width / 2, 30))),
                      icon: const Icon(FontAwesomeIcons.google,
                          color: Color.fromARGB(255, 160, 31, 22)),
                      label: const Text('Continue With Google',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

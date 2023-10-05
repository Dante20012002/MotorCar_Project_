import 'package:flutter/material.dart';
import 'package:motocar_project/view/widgets/my_custom_textFormField.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.only(top: 50, bottom: 50),
                      margin:
                          const EdgeInsetsDirectional.symmetric(vertical: 50.0),
                      child: Image.network(
                        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjRUlINje8jhbElJPwyh6p16YTkrlr-xZPPHn1yOwxL2SjEjQjyi1vD7RQPWFZcKqxLRorzzTBQwIjqd7CK6pXMEptuOS69mXnE3ub6dmXubOLufygrBmZjktTa4rJIiaEcXbKbdyUScwSc50gKm_lOeGmUHEiJhebFhq9Op2TfMJjGX1DBj4AFEt1J94jS/s320/Captura_de_pantalla_2023-09-28_193432-removebg-preview.png',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    //email
                    Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
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
                        horizontal: size.width * 0.1,
                        //vertical: 0.02,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        vertical: size.width * 0.025,
                      ),
                      child: myCustomTextformFlied(
                        obscuretext: true,
                        hintText: 'PASSWORD',
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
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () => {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.grey),
                            minimumSize: MaterialStateProperty.all(
                                Size(size.width / 2, 30))),
                        child: const Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        )),
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
                      icon: const Icon(Icons.g_mobiledata_outlined),
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

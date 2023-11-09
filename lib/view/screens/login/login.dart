import 'package:flutter/material.dart';
import 'package:motocar_project/utils/api/api_client.dart';
import 'package:motocar_project/view/widgets/my_custom_textFormField.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _globalKey,
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
                        controler: _email,
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
                        controler: _password,
                        sufficon: true,
                        obscuretext: passwordIcon,
                        hintText: 'PASSWORD',
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        iconButton: IconButton(
                          padding: const EdgeInsetsDirectional.only(end: 12),
                          onPressed: () {
                            setState(
                              () {
                                passwordIcon = !passwordIcon;
                              },
                            );
                          },
                          icon: passwordIcon
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        // key: _globalKey,
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
                        onPressed: () => {
                              Navigator.pushNamed(context, '/register'),
                            },
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

  void _processLogin() async {
    if (_email.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Ingrese un correo registrado'),
        duration: Duration(seconds: 3),
      ));
    } else if (_password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Ingrese una contraseña valida'),
        duration: Duration(seconds: 3),
      ));
    } else {
      var data = {'email': _email.text, 'password': _password.text};

      var res = await ApiClient().post('/api/login');
    }
  }
}

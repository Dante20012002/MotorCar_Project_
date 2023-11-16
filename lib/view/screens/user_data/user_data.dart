import 'package:flutter/material.dart';
import 'package:motocar_project/view/widgets/botommappbar.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';
import 'package:motocar_project/view/widgets/my_custom_container.dart';

class UserData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppBar(
            backgroundColor: Colors.red,
            flexibleSpace: Container(
              decoration: gradientBox(),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 230, 230, 230),
                        maxRadius: Checkbox.width * 2,
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.grey,
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pepito Maluma López',
                        style: TextStyle(
                          color: Color.fromARGB(255, 207, 203, 203),
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Compras: 2',
                        style: TextStyle(
                          color: Color.fromARGB(255, 207, 203, 203),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Ventas: 0',
                        style: TextStyle(
                          color: Color.fromARGB(255, 207, 203, 203),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                elevatedButton(
                  context: context,
                  rute: '/mis_dat',
                  texto: 'Mis Datos',
                  icon: const Icon(
                    Icons.person_outline_rounded,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                elevatedButton(
                  context: context,
                  texto: 'Me Gusta',
                  icon:
                      const Icon(Icons.favorite, size: 50, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                elevatedButton(
                  context: context,
                  rute: '/chat_soporte',
                  texto: 'Chat de Soporte',
                  icon: const Icon(Icons.support_agent_sharp,
                      size: 50, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                elevatedButton(
                    context: context,
                    texto: 'Configuración',
                    icon: const Icon(Icons.settings,
                        size: 50, color: Colors.grey)),
                const SizedBox(height: 20),
                elevatedButton(
                  context: context,
                  rute: '/sugerencias',
                  texto: 'Sugerencias',
                  icon: const Icon(Icons.edit, size: 50, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                elevatedButton(
                    context: context,
                    texto: 'Cerrar Sesión',
                    icon: const Icon(Icons.exit_to_app,
                        size: 50, color: Colors.grey)),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:motocar_project/view/widgets/botommappbar.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsView();
}

class _NotificationsView extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: gradientBox(),
          ),
          title: Text("Notificaciones"),
        ),
        body: ListView(
          children: [
            buildNotificationItem(
              "El vendedor Ramiro se ha contactado contigo!",
              "10/09",
            ),
            buildNotificationItem(
              "El vendedor Carlos se ha contactado contigo!",
              "11/09",
            ),
            buildNotificationItem(
              "El comprador Miguel se ha contactado contigo!",
              "12/09",
            ),
          ],
        ),
        bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }
}

Widget buildNotificationItem(String message, String date) {
  return ListTile(
    leading: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.mail_outline),
        SizedBox(width: 10), // Agregar espacio horizontal
      ],
    ),
    title: Text(message),
    trailing: Text(date),
  );
}

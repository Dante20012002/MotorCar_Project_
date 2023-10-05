import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 22, 0, 0),
                  Color.fromARGB(255, 146, 10, 0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipOval(
                    child: Image.network(
                      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgxL-dA-8rB1WmRByMyOk9QpKSmRXQtv4WHG_ZoLVaB4zD-havrt_gjXatkuYVR7i4W5OfPo-btZ4f82iRer3-W5Sy_9GweBdsFHd9OMD1XRuNyaMQHxbD3WgPhfu4KZeSBZtuAF0FSEwTJDfEKsTLGTcnKVyaCbaopZMB_DWUyZbpDyeOG2sYfD7D_GgPu/s1600/Captura%20de%20pantalla%202023-10-03%20091516-PhotoRoom.png-PhotoRoom.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Column(
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
                      'Compras: 20',
                      style: TextStyle(
                        color: Color.fromARGB(255, 207, 203, 203),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Ventas: 2',
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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Mis Datos',
              imageUrl:
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhRbmZ_AcxbXFQoo-XezfE8z2T_nncSiBNOHZZV5UfJIt_LRKHrrKXOEKD3jwI4HmwUWsjYtoUEY9n6F5SGvVo5HoutSGJ1Gai85oSTmhepjK72RLfH_CRG8NC2iiBfH44jQbelzkT9lh2LIkCHEwZ7eC-rOFFlN0aHJczFZ6uMahbsB7r8-09GCLhm8l9C/s320/mis%20datos.png',
            ),
            SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Me Gusta',
              imageUrl:
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhVNPPizWX8axEh9xDn9OJcPZZo3WP7RFNW07nX3VtWXPMCsPhJMjjgJATgOA3Cgkt2ooHGV_3473oOMru_K3FVSaLFnDp7pkgR_arKEIEYwuolTrZE1trv_EnW7uAMzNx4uCYGCTmg5IjUYGlszvu1Y6qIre0Tz8GeeDjpH56i8YTBXRB32GLz5ZbHbDjh/s1600/Captura%20de%20pantalla%202023-10-03%20094344-PhotoRoom.png-PhotoRoom.png',
            ),
            SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Chat de Soporte',
              imageUrl:
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj3tij61cN-J3i6I12FmL1QpBwSKcCd-I5luJHhkNTQepkglocnZ0SybShhpf0ip5ijAoiIbQmP3l7ZxW9cXgKEzhabqcpsFlwV6p2Y5F3DFsonCwIn7lK25fsraLqmchQGhFpBDSSw_FeJ1WHwI0OqgGuuc187YfWKj_kmKgAevNFMGllrOK05IHo7CA8x/s1600/Captura%20de%20pantalla%202023-10-03%20100615-PhotoRoom.png-PhotoRoom.png',
            ),
            SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Configuración',
              imageUrl:
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1NL3LDPuw0abk47s9JXUtvaaBVS2Qfx438VYwds6IV9x3o1fd0alUL7xHsyeULwUcwXl26bV1LXfXD8sDGO4TReYQ7fRYYiKg0821qA0IWdPA6w9afm0fneknNKYlQCIM47Xkka0S9P3DHrgJ_dWCBWuKQn44VjFX2lnEEmaP-b2_PgR9t_fXDlaK3xt7/s1600/Captura%20de%20pantalla%202023-10-03%20100806-PhotoRoom.png-PhotoRoom.png',
            ),
            SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Sugerencias',
              imageUrl:
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgbW5dZH6Hwgd31B57qIX4N_rhg_nb0Qwy_7-e63myHNeLAZsoq75wy1239xH8kFjIesaI-H6SWAqWffDEa5zi1hd_5ags1o9GmP-f-7_OiWrndUD-ZRs5GRyIqpqST6gVDtVFxm0eCRb6rYeYXQcZiPjIiegMYIXMhFNwx1PkU_3bV8He0ZE9Bz7nUZXiy/s1600/Captura%20de%20pantalla%202023-10-03%20100945-PhotoRoom.png-PhotoRoom.png',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 236, 234, 234),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: const Icon(
                Icons.home,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/userdata');
              },
              icon: const Icon(Icons.person),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String imageUrl;

  const CustomElevatedButton({
    required this.text,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 234, 231, 231),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                imageUrl,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

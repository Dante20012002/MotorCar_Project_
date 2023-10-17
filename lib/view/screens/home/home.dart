import 'package:flutter/material.dart';
import 'package:motocar_project/view/widgets/botommappbar.dart';
import 'package:motocar_project/view/widgets/my_custom_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarDetails {
  final String imageLink;
  final String title1;
  final String price;
  final String description;
  bool isFavorite = false;

  CarDetails({
    required this.imageLink,
    required this.title1,
    required this.price,
    required this.description,
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Car> _Car = Car.generatedItemsList(8);
  final List<CarDetails> carList = [
    CarDetails(
        imageLink:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh9njI3t6VbyQO7xgIYjAQOJ6wlmSF9c5Qat7__j6XmyzPfo9u0Zpiu3kDCaUNchcNjLCkf8uC4ZdVIiRfu_tPMBgCvtzK89whB99VCk0EI_wVnOk-eP7TfU5aJ3bsquOlSGjO7cdKjw54Lldp_umGNCD4aW4oLjaU4tHVjTDw6IJgffaw0jMEwRA1PMkF0/s320/Captura%20de%20pantalla%202023-10-04%20204312.png',
        title1: 'KIA Picanto 1.2LVibrant',
        price: '\$40,000,000',
        description: '2020 - 41,000 Kms - Bogotá, D.C.'),
    CarDetails(
        imageLink:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgZnAc7t5wCe5oXQqSdx1umEJFAdvLUDcgBXdI7m1HmX-9ipCR9Gt8GtLSOQi0IgWk5_nwUZjRYak_41zlSsMxtqrnT7qsf-T8iYQTbKYRTx3YP20VvfJCjIqek7cyLHIK4i2g6tn7fxEThPaEt_IbocLrqM6NC8d2LOnjTT_v5A4zvpK2lO0puC9csVCKz/s320/Captura%20de%20pantalla%202023-10-04%20204325.png',
        title1: 'Chevrolet AveoFamily 1.5L s/a',
        price: '\$24,000,000',
        description: '2010 - 99,400 Kms Bogotá, D.C.'),
    CarDetails(
        imageLink:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhcvuuRYsVtiSeCNOKtLt8vgh2eRLY7dUh5JQ1Broq3ASxaDPUJ9MnWRMF-IPX0gSYNp9hn1ac66lICt0nleaZ-rM-w-1gSnVtT5Wlhphv8wGj_kv3TeXeUJHygdx1kccBQinwnRcyIEvOId3UOMyap4jNTVI4BRVm-gHijErJJZkJRNbbzHOru_UpTH7Pg/s320/Captura%20de%20pantalla%202023-10-04%20204338.png',
        title1: 'SEAT Arona Reference',
        price: '\$87,000,000',
        description: '2022 - 3,500 Kms - Cali'),
    CarDetails(
        imageLink:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh1p3cFtSGvmbnxnTl-Qyic4FFw7LT9vHwx7GSmOGGiTfdox5B81nhVrNbwvCMo23Iw8AZiRmGmE6XfP1-snZc0OHGSZM5ozy7dCCPS52BLRVHmQ0pT1EWoPIi9mmAf33KXNfxJw0PtSj-CDwTBJP8K_E0yuQ6Cz25TVG93DRIPLROh97TyqRh0ViAZJbJv/s320/Captura%20de%20pantalla%202023-10-04%20204352.png',
        title1: 'Chevrolet Colorado4x4 Z71 AT',
        price: '\$175,000,000',
        description: '2023 - 22,000 Kms - Medellín'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 125,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 22, 0, 0),
                        Color.fromARGB(255, 146, 10, 0)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: const Text(
                          'Filtrar por:',
                          style: TextStyle(
                              color: Color.fromARGB(255, 207, 203, 203),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Limpiar filtros:',
                          style: TextStyle(
                              color: Color.fromARGB(255, 207, 203, 203),
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
                ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      for (Car car in _Car) {
                        car.isExpanded = false;
                      }
                      _Car[index].isExpanded = isExpanded;
                    });
                  },
                  children: _Car.map<ExpansionPanel>((Car car) {
                    return ExpansionPanel(
                        isExpanded: car.isExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(car.title),
                          );
                        },
                        body: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Text(car.description),
                            )
                          ],
                        ));
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(FontAwesomeIcons.sliders, color: Colors.white),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 22, 0, 0),
                  Color.fromARGB(255, 146, 10, 0)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: carList.map((car) {
                    return buildCarWidget(car);
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomnavigationbar(context));
  }

  Widget buildCarWidget(CarDetails car) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(car.imageLink),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      car.title1,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      car.price,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      car.description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_outlined,
                  color: car.isFavorite ? Colors.red : Colors.white,
                  shadows: const [Shadow(color: Colors.black, blurRadius: 2)],
                ),
                onPressed: () {
                  setState(() {
                    car.isFavorite = !car.isFavorite;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

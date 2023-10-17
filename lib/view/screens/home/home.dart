import 'package:flutter/material.dart';
import 'package:motocar_project/data/car_details.dart';
import 'package:motocar_project/view/widgets/botommappbar.dart';
import 'package:motocar_project/view/widgets/my_custom_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Car> _Car = Car.generatedItemsList(8);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                    children: _carDetails),
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }

  List<Widget> get _carDetails {
    List<Widget> _listCar = [];
    for (var car_l in carList) {
      _listCar.add(
        GestureDetector(
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
                        image: NetworkImage(car_l.imageLink),
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
                          car_l.title1,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          car_l.price,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          car_l.description,
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
                      color: car_l.isFavorite ? Colors.red : Colors.white,
                      shadows: const [
                        Shadow(color: Colors.black, blurRadius: 2)
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        car_l.isFavorite = !car_l.isFavorite;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      );
    }
    return _listCar;
  }
}

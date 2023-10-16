class Car {
  Car({
    required this.id,
    required this.title,
    required this.description,
    this.isExpanded = false,
  });
  int id;
  String title;
  String description;
  bool isExpanded;

  static List<Car> generatedItemsList(int sizeOftheList) {
    List<String> filtros = [
      'Color',
      'Marca',
      'Año',
      'Precio',
      'Ubicación',
      'Kilómetros',
      'Tipo de Cambio',
      'Otras Características'
    ];
    return List<Car>.generate(sizeOftheList, (int index) {
      return Car(
          id: index + 1,
          title: filtros[index % filtros.length],
          description: '${index + 1}');
    });
  }
}

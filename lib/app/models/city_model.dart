class CityModel {
  final String name;
  final String state;
  CityModel({required this.name, required this.state});

  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(name: map['name'] ?? '', state: map['country'] ?? '');
  }
}

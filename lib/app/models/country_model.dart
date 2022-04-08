class CountryModel {
  final String name;
  CountryModel({required this.name});

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    return CountryModel(name: map['name'] ?? '');
  }
}

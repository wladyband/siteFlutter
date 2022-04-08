class StateModel {
  final String name;
  final String country;
  StateModel({required this.name, required this.country});

  factory StateModel.fromMap(Map<String, dynamic> map) {
    return StateModel(name: map['name'] ?? '', country: map['country'] ?? '');
  }
}

import 'package:azerox/app/models/city_model.dart';
import 'package:azerox/app/models/country_model.dart';
import 'package:azerox/app/models/state_model.dart';

abstract class IBGERepository {
  Future<List<CountryModel>> findAllCountries();
  Future<List<StateModel>> findAllStates();
  Future<List<CityModel>> findAllCities();
}

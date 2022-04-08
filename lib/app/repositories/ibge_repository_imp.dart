import 'package:azerox/app/config/app_constants.dart';
import 'package:azerox/app/models/state_model.dart';
import 'package:azerox/app/models/country_model.dart';
import 'package:azerox/app/models/city_model.dart';
import 'package:azerox/app/repositories/ibge_repository.dart';

class IBGERepositoryImp extends IBGERepository {
  @override
  Future<List<CityModel>> findAllCities() async {
    return AppConstants.cities
        .map<CityModel>((e) => CityModel.fromMap(e))
        .toList();
  }

  @override
  Future<List<CountryModel>> findAllCountries() async {
    return AppConstants.countries
        .map<CountryModel>((e) => CountryModel.fromMap(e))
        .toList();
  }

  @override
  Future<List<StateModel>> findAllStates() async {
    return AppConstants.states
        .map<StateModel>((e) => StateModel.fromMap(e))
        .toList();
  }
}

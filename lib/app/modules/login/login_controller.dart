import 'package:azerox/app/models/city_model.dart';
import 'package:azerox/app/models/country_model.dart';
import 'package:azerox/app/models/state_model.dart';
import 'package:azerox/app/repositories/ibge_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_controller.dart';
import 'login_repository.dart';

class LoginController extends GetxController {
  final LoginRepository _loginRepository;
  final IBGERepository _ibgeRepository;
  LoginController({
    required LoginRepository loginRepository,
    required IBGERepository ibgeRepository,
  })  : _loginRepository = loginRepository,
        _ibgeRepository = ibgeRepository;

  final nomeEC = TextEditingController();
  final apelidoEC = TextEditingController();
  final nickNameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final confirmPasswordEC = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  final _countries = <CountryModel>[].obs;
  final selectedDay = "Dia".obs;
  final selectedMonth = "Mês".obs;
  final selectedYear = "Ano".obs;

  final _selectedCountry = CountryModel.empty().obs;
  final _selectedState = StateModel().obs;
  final _selectedCity = CityModel().obs;
  final _states = <StateModel>[].obs;
  final _cities = <CityModel>[].obs;
  final politicPrivacies = false.obs;

  CountryModel get selectedCountry => _selectedCountry.value;
  set selectedCountry(CountryModel value) => _selectedCountry.value = value;

  StateModel get selectedState => _selectedState.value;
  set selectedState(StateModel value) => _selectedState(value);

  CityModel get selectedCity => _selectedCity.value;
  set selectedCity(CityModel value) => _selectedCity(value);

  List<CountryModel> get countries => _countries;
  List<StateModel> get states => _states;
  List<CityModel> get cities => _cities;

  _initializeController() {
    ever<CountryModel>(_selectedCountry, (country) {
      findAllStates();
    });
    ever<StateModel>(_selectedState, (state) {
      findAllCities();
    });
  }

  @override
  void onInit() {
    findAllCountries();
    _initializeController();
    super.onInit();
  }

  @override
  void onClose() {
    emailEC.dispose();
    nomeEC.dispose();
    apelidoEC.dispose();
    passwordEC.dispose();
    nickNameEC.dispose();
    confirmPasswordEC.dispose();
    super.onClose();
  }

  Future<void> findAllCountries() async {
    var res = await _ibgeRepository.findAllCountries();
    _countries.assignAll(res);
  }

  Future<void> findAllStates() async {
    var res = await _ibgeRepository.findAllStates(selectedCountry.codCountry);
    _states.assignAll(res);
  }

  Future<void> findAllCities() async {
    var res = await _ibgeRepository.findAllCities(selectedState.codeState);
    cities.assignAll(res);
  }

  Future loginWithEmail() async {
    if ((formKey.currentState?.validate() ?? false) &&
        validCity.value &&
        validCountry.value &&
        validDate.value &&
        politicPrivacies.value &&
        validState.value) {
      try {
        isLoading(true);
        final user = await _loginRepository.loginWithEmail(
          country: selectedCountry.country,
          state: selectedState.state,
          city: selectedCity.city,
          day: selectedDay.value,
          month: selectedMonth.value,
          year: selectedYear.value,
          email: emailEC.text,
          name: nomeEC.text,
          nickName: nickNameEC.text,
          password: passwordEC.text,
          profile: apelidoEC.text,
        );
        Get.find<AppController>().currentUser = user;
        isLoading.value = false;
        Get.snackbar(
          "Sucesso",
          "Sua conta foi cadastrada",
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } catch (e) {
        Get.snackbar(
          "Ops",
          "Não foi possível criar sua conta",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } finally {
        isLoading(false);
      }
    }
  }

  final validDate = true.obs;
  final validCountry = true.obs;
  final validState = true.obs;
  final validCity = true.obs;
  final validPolitics = true.obs;
  void validForm() {
    if (selectedDay.value == "Dia" ||
        selectedMonth.value == "Mês" ||
        selectedYear.value == "Ano") {
      validDate(false);
    }
    if (selectedCity.city.isEmpty) {
      validCity(false);
    }
    if (selectedState.state.isEmpty) {
      validState(false);
    }
    if (selectedCountry.country.isEmpty) {
      validCountry(false);
    }
    if (!politicPrivacies.value) {
      validPolitics(false);
    }
    formKey.currentState?.validate();
    loginWithEmail();
  }
}

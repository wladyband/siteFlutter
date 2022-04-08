import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_controller.dart';
import '../../config/app_routes.dart';
import 'login_repository.dart';

class LoginController extends GetxController {
  final LoginRepository repository;
  LoginController(this.repository);

  final emailEC = TextEditingController();
  final nomeEC = TextEditingController();
  final apelidoEC = TextEditingController();
  final passwordEC = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void onClose() {
    emailEC.dispose();
    nomeEC.dispose();
    apelidoEC.dispose();
    passwordEC.dispose();
    super.onClose();
  }

  final isLoading = false.obs;

  Future loginWithEmail(String email, String password) async {
    try {
      isLoading.value = true;
      final user = await repository.loginWithEmail(
        email.trim(),
        password.trim(),
      );
      Get.find<AppController>().currentUser = user;
      isLoading.value = false;
      Get.offAllNamed(Routes.home);
    } catch (e) {
      isLoading.value = false;
      throw 'E-mail e/ou senha inválidos.';
    }
  }
}

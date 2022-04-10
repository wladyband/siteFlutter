import 'package:azerox/app/repositories/ibge_repository.dart';
import 'package:azerox/app/repositories/ibge_repository_imp.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'login_controller.dart';
import 'login_repository.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginRepository(Get.find<Dio>()));
    Get.put<IBGERepository>(IBGERepositoryImp(httpClient: Get.find()));
    Get.put(LoginController(
      ibgeRepository: Get.find(),
      loginRepository: Get.find(),
    ));
  }
}

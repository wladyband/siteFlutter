import 'package:azerox/app/config/app_constants.dart';
import 'package:azerox/app/core/ui/widgets/app_drop.dart';
import 'package:azerox/app/core/ui/widgets/app_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);

  List<String> items = ['Item1'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: Get.back,
      ),
      title: const Text("Novo Cadastro"),
    );
  }

  Widget _body(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(maxWidth: 600),
        child: ListView(
          children: [
            AppField(
              label: "Nome",
              controller: controller.nomeEC,
            ),
            AppField(
              label: "Apelido",
              controller: controller.apelidoEC,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "@",
                    style: context.textTheme.bodyText2
                        ?.copyWith(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: AppField(
                    label: "Perfil público",
                    controller: controller.apelidoEC,
                  ),
                ),
              ],
            ),
            AppField(
              label: "Email",
              controller: controller.emailEC,
            ),
            //   DropdownButton<String>(
            //     items: const [],
            //     hint: const Text("label"),
            //     onChanged: (value) {},
            //  ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("País"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: AppDrop<String>(
                      onChanged: (value) {},
                      items: _itemsCountry(),
                      label: "",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Estado"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: AppDrop<String>(
                      onChanged: (value) {},
                      items: _itemsEstado(),
                      label: "",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Cidade"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: AppDrop<String>(
                      onChanged: (value) {},
                      items: _itemsCities(),
                      label: "",
                    ),
                  ),
                ),
              ],
            ),
            AppField(
              label: "Cidade",
              controller: controller.apelidoEC,
            ),
            AppField(
              label: "Senha",
              controller: controller.apelidoEC,
            ),
            AppField(
              label: "Confirma senha",
              controller: controller.apelidoEC,
            ),
          ],
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _itemsEstado() {
    final response = <DropdownMenuItem<String>>[];
    AppConstants.states.toList().forEach((key) {
      response.add(DropdownMenuItem(
        value: key["name"],
        child: Expanded(
          child: Text(key["name"] ?? ""),
        ),
      ));
    });
    return response;
  }

  List<DropdownMenuItem<String>> _itemsCountry() {
    final response = <DropdownMenuItem<String>>[];
    AppConstants.countries.toList().forEach((key) {
      response.add(DropdownMenuItem(
        value: key["name"],
        child: Expanded(
          child: Text(key["name"] ?? ""),
        ),
      ));
    });
    return response;
  }

  List<DropdownMenuItem<String>> _itemsCities() {
    final response = <DropdownMenuItem<String>>[];
    AppConstants.cities.toList().forEach((key) {
      response.add(DropdownMenuItem(
        value: key["name"],
        child: Expanded(
          child: Text(key["name"] ?? ""),
        ),
      ));
    });
    return response;
  }
}

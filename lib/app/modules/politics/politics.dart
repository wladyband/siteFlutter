import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Politics extends StatelessWidget {
  const Politics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: Get.back, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Politicas de privacidade'),
      ),
      body: Container(),
    );
  }
}

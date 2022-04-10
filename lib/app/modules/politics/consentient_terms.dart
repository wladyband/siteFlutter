import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsentientTerms extends StatelessWidget {
  const ConsentientTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: Get.back, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Termos de consentimento'),
      ),
      body: ListView(
        children: const [
          Text(''),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UseTerms extends StatelessWidget {
  const UseTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: Get.back, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Termos de uso'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          constraints: const BoxConstraints(maxWidth: 600),
          child: ListView(
            children: const [
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

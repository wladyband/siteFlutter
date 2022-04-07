import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
   LoginPage({Key? key}) : super(key: key);


  List<String> items = [
    'Item1'
  ];




  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          var largura = constraints.maxWidth;
          if(largura < 600){
            return Scaffold(
              appBar: AppBar(
                title: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Cadastrar",
                      textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              body: Container(
                width: 600,
                height: 600,
                color: Colors.blue,
              ),
            );
          } else{
            return Scaffold(
              appBar: AppBar(
                title: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Cadastrar",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 600,
                        height: 600,
                        child: Form(
                          child: ListView(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: SizedBox(
                                    height: 50,
                                    child: TextFormField(
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                      decoration: InputDecoration(
                                        labelText: 'Nome',
                                          labelStyle: TextStyle(
                                            color: Colors.black54,
                                          ),
                                        hintStyle: const TextStyle(fontSize: 13),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                                          borderSide: BorderSide(color: Colors.teal),
                                        ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                            borderSide: BorderSide(color: Colors.black26),
                                          ),
                                        suffixIcon: IconButton(
                                          icon: const Icon(
                                            Icons.close,
                                            size: 6,
                                          ),
                                          onPressed: () {},
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: SizedBox(
                                    height: 50,
                                    child: TextFormField(
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                      decoration: InputDecoration(
                                        labelText: 'Apelido',
                                        labelStyle: TextStyle(
                                          color: Colors.black54,
                                        ),
                                        hintStyle: const TextStyle(fontSize: 13),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                                          borderSide: BorderSide(color: Colors.teal),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                          borderSide: BorderSide(color: Colors.black26),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: const Icon(
                                            Icons.close,
                                            size: 6,
                                          ),
                                          onPressed: () {},
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    DropdownButton(

                                      // Initial Value
                                      value: controller.dropdownvalue,

                                      // Down Arrow Icon
                                      icon: const Icon(Icons.keyboard_arrow_down),

                                      // Array list of items
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        Obx (() => Text (controller.dropdownvalue = newValue! as RxString));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        });
  }

}

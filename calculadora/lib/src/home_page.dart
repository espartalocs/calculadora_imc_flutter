import 'package:calculadora/src/controller/controlller.dart';
import 'package:calculadora/src/localwidget/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(ControllerPage());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Bem Vindo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('Alterar nome'),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.list_alt),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('Histórico'),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text('Calculadora IMC'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  'Informe seu peso e sua altura',
                  style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 400,
                child: CustomTextField(
                  inputFormater: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]')),
                  ],
                  controller: controller.pesoController,
                  label: 'Peso',
                ),
              ),
              SizedBox(
                width: 400,
                child: CustomTextField(
                  inputFormater: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]')),
                  ],
                  controller: controller.alturaController,
                  label: 'Altura',
                ),
              ),
              SizedBox(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        controller.calcuarImc(double.parse(controller.pesoController.text.replaceAll(',', '.')), double.parse(controller.alturaController.text.replaceAll(',', '.')));
                      },
                      child: const Text('Calcular'))),
              Text('Seu Resultado: Imc: ${controller.imc.value.toStringAsFixed(2)} e seu nivel de IMC: ${controller.nivelDeIMC}')
            ]),
          ),
        ));
  }
}

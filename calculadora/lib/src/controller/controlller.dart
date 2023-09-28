import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerPage extends GetxController {
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();
  String nivelDeIMC = '';
  RxDouble imc = 0.00.obs;

  void calcuarImc(double peso, double altura) {
    imc.value = peso / (altura * altura);
    if (imc.value < 18.5) {
      nivelDeIMC = 'MAGREZA';
    } else if (imc.value >= 18.5 && imc.value <= 24.9) {
      nivelDeIMC = 'NORMAL';
    } else if (imc.value >= 25.0 && imc.value <= 29.9) {
      nivelDeIMC = 'SOBREPESO I';
    } else if (imc.value >= 30.0 && imc.value <= 39.9) {
      nivelDeIMC = 'OBESIDADE II';
    } else {
      nivelDeIMC = 'OBESIDADE GRAVE III';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    priceInput = TextEditingController();
    dGopay = TextEditingController();
    dShopee = TextEditingController();
    dOvo = TextEditingController();
    maksGopay = TextEditingController();
    maksShopee = TextEditingController();
    maksOvo = TextEditingController();
  }

  @override
  void onClose() {
    // todo here
    priceInput.dispose();
    dGopay.dispose();
    dShopee.dispose();
    dOvo.dispose();
    maksGopay.dispose();
    maksShopee.dispose();
    maksOvo.dispose();
    super.onClose();
  }

  // input harga sebelum diskon
  late TextEditingController priceInput;

  // input diskon
  late TextEditingController dGopay;
  late TextEditingController dShopee;
  late TextEditingController dOvo;

  // // input maksimal diskon
  late TextEditingController maksGopay;
  late TextEditingController maksShopee;
  late TextEditingController maksOvo;

  // diskon yang didapatkan
  double getGopay = 0;
  double getShopee = 0;
  double getOvo = 0;

  test() {
    getGopay = double.tryParse(priceInput.text) ?? 0;

    update();
    return getGopay;
  }
}

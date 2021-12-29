import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

import 'package:intl/intl.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    priceInput = TextEditingController();
    dGopay = TextEditingController(text: "30");
    dShopee = TextEditingController(text: "35");
    dOvo = TextEditingController(text: "40");
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

  bool cGopay = false;
  bool cShopee = false;
  bool cOvo = false;

  double totalBayar = 0;
  double safe = 0;

  void math() {
    gopay();
    shopee();
    ovo();
    findCheapest();

    update();
    return;
  }

  void findCheapest() {
    double harga = double.tryParse(priceInput.text) ?? 0;
    List<double> termurah = [getGopay, getShopee, getOvo];
    for (int i = 1; i < termurah.length; i++) {
      // code untuk mengecek apakah Gopay yg terbaik
      if (termurah.reduce(max) == termurah[0]) {
        cGopay = true;
        totalBayar = harga - getGopay;
        safe = getGopay;
      } else {
        cGopay = false;
      }

      // code untuk mengecek apakah Shopee yg terbaik
      if (termurah.reduce(max) == termurah[1]) {
        cShopee = true;
        totalBayar = harga - getShopee;
        safe = getShopee;
      } else {
        cShopee = false;
      }
      // code untuk mengecek apakah ovo yg terbaik
      if (termurah.reduce(max) == termurah[2]) {
        cOvo = true;
        totalBayar = harga - getOvo;
        safe = getOvo;
      } else {
        cOvo = false;
      }

      print("total bayar $totalBayar");
    }

    // bool termurah

    print("cGopay = $cGopay");
    print("cShopee = $cShopee");
    print("cOvo = $cOvo");
    print("=" * 30);
  }

  double? gopay() {
    double harga = double.tryParse(priceInput.text) ?? 0;
    double inputGopay = double.tryParse(dGopay.text) ?? 0;
    double mgopay = double.tryParse(maksGopay.text) ?? 0;

    update();
    getGopay = harga * inputGopay / 100;

    if (mgopay != 0 && mgopay < getGopay) {
      getGopay = mgopay;
    }
  }

  double? shopee() {
    double harga = double.tryParse(priceInput.text) ?? 0;
    double inputShopee = double.tryParse(dShopee.text) ?? 0;
    double mshopee = double.tryParse(maksShopee.text) ?? 0;

    update();
    getShopee = harga * inputShopee / 100;
    if (mshopee != 0 && mshopee < getShopee) {
      getShopee = mshopee;
    }
  }

  double? ovo() {
    double harga = double.tryParse(priceInput.text) ?? 0;
    double inputOvo = double.tryParse(dOvo.text) ?? 0;
    double movo = double.tryParse(maksOvo.text) ?? 0;
    update();
    getOvo = harga * inputOvo / 100;

    if (movo != 0 && movo < getOvo) {
      getOvo = movo;
    }
  }
}

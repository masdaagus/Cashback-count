import 'package:cashbb/app/modules/home/controllers/home_controller.dart';
import 'package:cashbb/app/modules/home/views/components/wallet_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wallets extends GetView<HomeController> {
  const Wallets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WalletCard(
          tittle: "Go-Pay",
          hasilDiskon: 21000,
          persenDiskon: controller.dGopay,
          maks: 10000,
        ),
        WalletCard(
          tittle: "Shopee",
          hasilDiskon: 21000,
          persenDiskon: TextEditingController(),
          maks: 10000,
        ),
        WalletCard(
          tittle: "OVO",
          hasilDiskon: 21000,
          persenDiskon: TextEditingController(),
          maks: 10000,
        ),
      ],
    );
  }
}

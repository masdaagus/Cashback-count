import 'package:cashbb/app/modules/home/controllers/home_controller.dart';
import 'package:cashbb/app/modules/home/views/components/wallet_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wallets extends StatelessWidget {
  const Wallets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GetBuilder<HomeController>(
          builder: (c) {
            return WalletCard(
              tittle: "Go-Pay",
              hasilDiskon: c.getGopay,
              persenDiskon: c.dGopay,
              maksDiskon: c.maksGopay,
              cheapest: c.cGopay,
            );
          },
        ),
        GetBuilder<HomeController>(
          builder: (c) {
            return WalletCard(
              tittle: "Shopee",
              hasilDiskon: c.getShopee,
              persenDiskon: c.dShopee,
              maksDiskon: c.maksShopee,
              cheapest: c.cShopee,
            );
          },
        ),
        GetBuilder<HomeController>(
          builder: (c) {
            return WalletCard(
              tittle: "OVO",
              hasilDiskon: c.getOvo,
              persenDiskon: c.dOvo,
              maksDiskon: c.maksOvo,
              cheapest: c.cOvo,
            );
          },
        ),
      ],
    );
  }
}

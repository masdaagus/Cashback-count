import 'package:cashbb/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../constant.dart';

class InputOutput extends GetView<HomeController> {
  const InputOutput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GetBuilder<HomeController>(
          builder: (c) {
            return PriceIO(
              tittle: "HARGA SEBELUM",
              price: double.tryParse(c.priceInput.text) ?? 0,
              coret: true,
            );
          },
        ),
        GetBuilder<HomeController>(
          builder: (c) {
            return PriceIO(tittle: "TOTAL BAYAR", price: c.totalBayar);
          },
        ),
      ],
    );
  }
}

class PriceIO extends StatelessWidget {
  const PriceIO({
    Key? key,
    this.price = 0,
    this.coret = false,
    required this.tittle,
  }) : super(key: key);

  final String tittle;
  final double price;
  final bool coret;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      height: 65,
      width: Get.width * .43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black.withOpacity(.2), width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nf.format(price),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
              decoration: coret ? TextDecoration.lineThrough : null,
            ),
          ),
          SizedBox(height: 5),
          Text(
            tittle,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:cashbb/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PriceInput extends GetView<HomeController> {
  const PriceInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "HARGA SEBELUM CASHBACK",
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 5),
        Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black.withOpacity(.2), width: 2),
          ),
          child: Container(
            height: 30,
            child: TextField(
              onChanged: (text) {
                controller.math();
              },
              controller: controller.priceInput,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "0",
              ),
            ),
          ),
        ),
      ],
    );
  }
}

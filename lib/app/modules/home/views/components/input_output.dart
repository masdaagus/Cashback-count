import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputOutput extends StatelessWidget {
  const InputOutput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PriceIO(tittle: "HARGA SEBELUM", price: 27000),
        PriceIO(tittle: "TOTAL BAYAR", price: 20000),
      ],
    );
  }
}

class PriceIO extends StatelessWidget {
  const PriceIO({
    Key? key,
    this.price = 0,
    required this.tittle,
  }) : super(key: key);

  final String tittle;
  final int price;

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
            price.toString(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
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

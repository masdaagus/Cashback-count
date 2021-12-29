import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'components/cheapest.dart';
import 'components/input_output.dart';
import 'components/price_input.dart';
import 'components/wallets.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Cashback Count',
          style: TextStyle(
            color: Colors.black.withOpacity(.74),
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            // diskon tertinggi
            Cheapest(),
            SizedBox(height: 10),

            // harga sebelum dan total bayar
            InputOutput(),
            SizedBox(height: 30),

            // Card Harga
            Wallets(),

            SizedBox(height: 10),

            // Input Harga
            PriceInput(),
          ],
        ),
      ),
    );
  }
}

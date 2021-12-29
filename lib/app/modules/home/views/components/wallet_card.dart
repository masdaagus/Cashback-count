import 'package:cashbb/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';

class WalletCard extends GetView<HomeController> {
  const WalletCard({
    Key? key,
    required this.tittle,
    required this.persenDiskon,
    required this.hasilDiskon,
    required this.maksDiskon,
    this.cheapest = false,
  }) : super(key: key);

  final String tittle;
  final TextEditingController persenDiskon;
  final TextEditingController maksDiskon;
  final double hasilDiskon;

  final bool cheapest;
  // final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: Get.width * .285,
        decoration: BoxDecoration(
          color: cheapest ? Color(0XFF90e0ef).withOpacity(.3) : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0XFF90e0ef).withOpacity(.3),
              offset: Offset(-5, -5),
              blurRadius: 18,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              offset: Offset(5, 5),
              blurRadius: 18,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   color: Color(0XFF31FFC9).withOpacity(.5),
          //   width: 1,
          // ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text(tittle,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              SizedBox(height: 25),

              // textfield untuk persen disokn
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 28,
                    // color: Colors.amber,
                    child: TextField(
                      controller: persenDiskon,
                      onChanged: (text) {
                        controller.math();
                      },
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "0%",
                        hintStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "%",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),

              // hasil diskon
              Text(
                nf.format(hasilDiskon),
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15),

              // diskon maksimal
              Container(
                height: 30,
                child: TextField(
                  controller: maksDiskon,
                  onChanged: (text) {
                    controller.math();
                  },
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "maks.0",
                    hintStyle: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              SizedBox(height: 5),
              // Text("press number to edit", style: TextStyle(fontSize: 10)),
            ],
          ),
        ),
      ),
    );
  }
}

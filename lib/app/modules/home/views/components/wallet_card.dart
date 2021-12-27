import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
    required this.tittle,
    required this.persenDiskon,
    required this.hasilDiskon,
    this.maks = 0,
    this.cheapest = false,
  }) : super(key: key);

  final String tittle;
  final TextEditingController persenDiskon;
  final int hasilDiskon;
  final int maks;
  final bool cheapest;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: Get.width * .285,
        decoration: BoxDecoration(
          color: cheapest ? Colors.greenAccent.withOpacity(.33) : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0XFF31FFC9).withOpacity(.15),
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
          border: Border.all(
            color: Color(0XFF31FFC9).withOpacity(.5),
            width: 1,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text(tittle,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              SizedBox(height: 25),

              // textfield untuk persen disokn
              Container(
                height: 30,
                child: TextField(
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
              SizedBox(height: 10),

              // hasil diskon
              Text(
                hasilDiskon.toString(),
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15),

              // diskon maksimal
              Container(
                height: 30,
                child: TextField(
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
              Text("press number to edit", style: TextStyle(fontSize: 10)),
            ],
          ),
        ),
      ),
    );
  }
}

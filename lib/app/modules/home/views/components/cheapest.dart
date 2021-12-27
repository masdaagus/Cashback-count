import 'package:flutter/material.dart';

class Cheapest extends StatelessWidget {
  const Cheapest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffEEF0F4),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.black.withOpacity(.2),
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "12.000",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("You safe"),
        ],
      ),
    );
  }
}

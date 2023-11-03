
import 'package:flutter/material.dart';

import '../utils/common_style.dart';

class Offering extends StatelessWidget {
  const Offering({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "We Offer Green Technologies",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold),
            ),
            heightSizedBox(15.0),
            const Text(
              "Our company is an end-to-end, customer oriented alternative energy\ncompany that is centered on the marketing, trading, transportation,\nand distribution of solar panels in the US and around the world…",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            heightSizedBox(15.0),
            const Text(
              "Firstly, we’re an environmentally friendly renewable energy company\noffering a broad portfolio of technologies to our clients globally!",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            heightSizedBox(15.0),
            const Text(
              "We’re the best solar energy & wind turbines provider in the States!",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
          ],
        ),
        Image.asset("assets/images/11.jpg")
      ],
    );
  }
}

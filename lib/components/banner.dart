
import 'package:flutter/material.dart';

import '../utils/common_style.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width(context),
          height: 700,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/4.jpg'), // Replace with your image path
              fit: BoxFit.cover, // You can change this to fit your needs
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "We stand for ecology and",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                heightSizedBox(20.0),
                const Text(
                  "Soloar Energy",
                  style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                heightSizedBox(50.0),
                const Text(
                  "Select Solar Panels and make your contribution to ecology and life\non the Earth! This solution will positively affect your life!",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
        // Container(
        //   child: Image.asset(
        //     "assets/images/2.jpg",
        //     width: width(context),
        //     height: 700,
        //     fit: BoxFit.cover,
        //   ),
        // ),
        heightSizedBox(100.0),
      ],
    );
  }
}



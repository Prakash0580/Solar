import 'package:flutter/material.dart';

import '../utils/common_style.dart';

class Consult extends StatelessWidget {
  const Consult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: 250,
      color: Color(0xFF88d037),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightSizedBox(20.0),
              Text(
                "Do You Need a Consultation?",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "Solar can give you lots of advantages, from which you will surely benefit",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          ),
          widthSizedBox(100.0),
          Container(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                // showDialog(
                //     context: context,
                //     builder: (BuildContext context) {
                //       return AlertDialog(
                //         content: Container(
                //           width: 800,
                //           height: 500,
                //           color: Colors.green,
                //           child: Column(
                //             children: [],
                //           ),
                //         ),
                //       );
                //     });
              },
              child: Text(
                "Call2Action",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

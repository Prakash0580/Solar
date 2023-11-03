
import 'package:flutter/material.dart';

import '../utils/common_style.dart';

class OurTeam extends StatelessWidget {
  const OurTeam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: width(context),
      color: Color(0xFFfaf7f7),
      child: Column(
        children: [
          heightSizedBox(50.0),
          Text(
            "Meet Our Team",
            style:
                TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          heightSizedBox(50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeamImages(
                src: "assets/images/team1.jpg",
                name: "Philip Murphy",
                post: "Solar support specialist",
              ),
              widthSizedBox(20.0),
              TeamImages(
                src: "assets/images/team2.jpg",
                name: "Nicholas Hunt",
                post: "Project manager",
              ),
              widthSizedBox(20.0),
              TeamImages(
                src: "assets/images/team3.jpg",
                name: "Carl Richards",
                post: "Certified solar consultant",
              ),
              widthSizedBox(20.0),
              TeamImages(
                src: "assets/images/team4.jpg",
                name: "Adam Smith",
                post: "Solar support specialist",
              ),
              widthSizedBox(20.0)
            ],
          )
        ],
      ),
    );
  }
}



class TeamImages extends StatelessWidget {
  final String src, name, post;
  const TeamImages(
      {super.key, required this.src, required this.name, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 260,
          height: 270,
          constraints: BoxConstraints(minWidth: 260),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(src), // Replace with your image path
              fit: BoxFit.cover, // You can change this to fit your needs
            ),
          ),
        ),
        heightSizedBox(20.0),
        Text(
          name,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        heightSizedBox(15.0),
        Text(
          post,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ],
    );
  }
}
import 'package:bm/utils/common_style.dart';
import 'package:bm/utils/field_val.dart';
import 'package:flutter/material.dart';

import '../components/about_items.dart';
import '../components/app_bar.dart';
import '../components/banner.dart';
import '../components/consult.dart';
import '../components/gallery.dart';
import '../components/offering.dart';
import '../components/our_team.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusAppBar(),
      drawer: const Drawer(),
      body: SizedBox(
        width: width(context),
        height: null,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBanner(),
              const Offering(),
              heightSizedBox(100.0),
              const Consult(),
              heightSizedBox(100.0),
              const OurTeam(),
              const AboutItems(),
              const Gallery(),
              Container(
                height: 700,
                width: width(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    heightSizedBox(50.0),
                    const Text(
                      "Contact Us",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    heightSizedBox(50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContactDetails(),
                        widthSizedBox(200.0),
                        ContactForm(),
                      ],
                    )
                  ],
                ),
              ),
              heightSizedBox(50),
              Container(
                width: width(context),
                height: 300,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 100, top: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "BM Tecno Labs",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Column(
                            children: [
                              Text(
                                "Copyright",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              heightSizedBox(15.0),
                              Text(
                                "@ Bm Tecno Labs All right riserved",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  const ContactDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ContectItems(
          icon: Icons.phone,
          title: "Phone:",
          text: "9876543210",
        ),
        heightSizedBox(30.0),
        const ContectItems(
          icon: Icons.location_on,
          title: "Phone:",
          text:
              "4801 South University Drive Suite\n237, Ft. Lauderdale, FL 33328,\nUnited States",
        ),
        heightSizedBox(30.0),
        const ContectItems(
          icon: Icons.email,
          title: "Email:",
          text: "bmtecnolabs@gmail.com",
        ),
        // TxtField(
        //   headTxt: "Name",
        // )
      ],
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TxtField(
          hintText: "Name",
        ),
        heightSizedBox(30.0),
        TxtField(
          hintText: "Email",
        ),
        heightSizedBox(30.0),
        TxtField(
          hintText: "Mobile",
        ),
        heightSizedBox(30.0),
        TxtField(
          hintText: "Messege",
          maxLines: 10,
          height: 100,
        ),
        heightSizedBox(30.0),

        Container(
          height: 60,
          width: 200,
          color: Color(0xFF88d037),
          child: Center(
            child: Text("Submit"),
          ),
        )
        // ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.green,
        //         fixedSize: Size(200, 60)),
        //     onPressed: () {},
        //     child: Text("Submit"))
      ],
    );
  }
}

class TxtField extends StatelessWidget {
  final double? height;
  final String? hintText;
  final int? maxLines, maxLength;
  const TxtField(
      {super.key, this.hintText, this.maxLines, this.maxLength, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        height: height ?? 50,
        child: TextField(
          maxLines: maxLines,
          // maxLength: maxLength,
          cursorColor: Colors.black38,
          // textAlign: TextAlign.center,
          // textDirection:textd ,
          cursorWidth: 0.5,
          cursorHeight: 20,
          decoration: InputDecoration(
              // hoverColor: Colors.green.shade100,
              fillColor: Color(0xFFfaf7f7),
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 0.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black45, width: 0.1),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.w600)),
        ));
  }
}

class ContectItems extends StatelessWidget {
  final IconData icon;
  final String title, text;
  const ContectItems({
    super.key,
    required this.icon,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 40,
          color: const Color(0xFF88d037),
        ),
        heightSizedBox(20.0),
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black54),
        ),
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  final String title, text;
  const CardItem({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 280,
      child: Card(
        elevation: 5,
        shadowColor: Colors.purpleAccent,
        child: Column(
          children: [
            Container(
              width: width(context),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.purpleAccent,
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}

import 'package:bm/components/res_layout.dart';
import 'package:bm/utils/common_style.dart';
import 'package:bm/utils/field_val.dart';
import 'package:flutter/material.dart';

import '../components/about_items.dart';
import '../components/app_bar.dart';
import '../components/banner.dart';
import '../components/bottom.menu.dart';
import '../components/consult.dart';

import '../components/contact_us.dart';
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
              if (Responsive.isMobile(context)) MobTopBanner(),
              if (Responsive.isTablet(context)) TabTopBanner(),
              if (Responsive.isDesktop(context)) TopBanner(),

              // const TopBanner(),
              if (Responsive.isMobile(context)) MobOffering(),
              if (Responsive.isTablet(context)) Offering(),
              if (Responsive.isDesktop(context)) Offering(),
              // const Offering(),
              heightSizedBox(80.0),
              if (Responsive.isMobile(context)) MobConsult(),
              if (Responsive.isTablet(context)) Consult(),
              if (Responsive.isDesktop(context)) Consult(),

              // const Consult(),
              heightSizedBox(80.0),
              if (Responsive.isMobile(context)) MobOurTeam(),
              if (Responsive.isTablet(context)) OurTeam(),
              if (Responsive.isDesktop(context)) OurTeam(),
              // const OurTeam(),
              if (Responsive.isMobile(context)) MobAboutItems(),
              if (Responsive.isTablet(context)) AboutItems(),
              if (Responsive.isDesktop(context)) AboutItems(),
              // const MobAboutItems(),
              if (Responsive.isMobile(context)) MobGallery(),
              if (Responsive.isTablet(context)) Gallery(),
              if (Responsive.isDesktop(context)) Gallery(),
              // const MobGallery(),
              if (Responsive.isMobile(context)) MobContactUs(),
              if (Responsive.isTablet(context)) ContactUs(),
              if (Responsive.isDesktop(context)) ContactUs(),
              // MobContactUs(),
              heightSizedBox(50.0),
                if (Responsive.isMobile(context)) MobBottomMenu(),
              if (Responsive.isTablet(context)) BottomMenu(),
              if (Responsive.isDesktop(context)) BottomMenu(),
              // BottomMenu()
            ],
          ),
        ),
      ),
    );
  }
}

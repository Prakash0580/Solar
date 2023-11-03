import 'package:flutter/material.dart';
import '../utils/common_style.dart';
import 'res_layout.dart';

class CusAppBar extends StatelessWidget implements PreferredSizeWidget {
  CusAppBar({
    super.key,
  });
  final AppBar appBar = AppBar();
  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          if (!Responsive.isDesktop(context))
            Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ))),
          widthSizedBox(120.0),
          const Text(
            "BM TecnoLabs",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF88d037),
                fontSize: 25),
          ),
          if (Responsive.isDesktop(context)) WebAppBar()
        ],
      ),
    );
  }
}

class WebAppBar extends StatelessWidget {
  const WebAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widthSizedBox(60.0),
        cusBtn(
          text: 'Home',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        cusBtn(
          text: 'Services',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        cusBtn(
          text: 'Project',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        cusBtn(
          text: 'Gallery',
          onTap: () {},
        ),
        widthSizedBox(40.0),
        cusBtn(
          text: 'Contect',
          onTap: () {},
        ),
      ],
    );
  }
}

class cusBtn extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const cusBtn({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

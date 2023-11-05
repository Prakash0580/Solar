// // ignore: must_be_immutable


// import 'package:flutter/material.dart';

// import 'common_style.dart';

// class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final double? elevation, titleSpacing;
//   final bool? boolLeading, centerTitle, actions;
//   bool? isLogin;
//   final Widget? leading, titleWidget;
//   final Function? onTap;
//   final String? title;

//   final List<Widget>? actionList;
//   final Color? bgColor, txtColor;
//   final AppBar appBar = AppBar();
//   BaseAppBar(
//       {Key? key,
//       this.boolLeading,
//       this.elevation,
//       this.actions,
//       this.isLogin,
//       this.leading,
//       this.centerTitle,
//       this.onTap,
//       this.title,
//       this.titleWidget,
//       this.bgColor,
//       this.txtColor,
//       this.titleSpacing,
//       this.actionList})
//       : super(key: key);

//   @override
//   Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//         titleSpacing: titleSpacing ?? 20.0,
//         backgroundColor: appBarColor,
//         // backgroundColor: appBarColor,
//         elevation: elevation,
//         automaticallyImplyLeading: boolLeading ?? true,
//         leading: leading,
//         title: titleWidget ??
//             Text(title ?? '',
//                 style: TextStyle(
//                     color: txtColor ?? Colors.black,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400)),
//         // title: title,
//         centerTitle: centerTitle ?? false,
//         actions: actionList);
//   }
// }

// // class DashbordAppBar extends StatelessWidget implements PreferredSizeWidget {
// //   const DashbordAppBar({super.key});

// //   @override
// //   Size get preferredSize => const Size.fromHeight(kToolbarHeight);

// //   @override
// //   Widget build(BuildContext context) {
// //     return AppBar(
// //       titleSpacing: 20.0,
// //       backgroundColor: Colors.amber,
// //       automaticallyImplyLeading: false,
// //       title: const Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             'John Doe',
// //             style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
// //           ),
// //           Text(
// //             'john.doe@example.com',
// //             style: TextStyle(fontSize: 12, color: Colors.black),
// //           ),
// //         ],
// //       ),
// //       actions: [
// //         IcnBtn(
// //           icon: const Icon(
// //             Icons.notifications,
// //           ),
// //           onpressed: () {},
// //         ),
// //         IcnBtn(
// //           icon: const Icon(Icons.wallet),
// //           onpressed: () {},
// //         ),
// //         IcnBtn(
// //           icon: const Icon(Icons.person),
// //           onpressed: () {
// //             Navigator.push(context,
// //                 MaterialPageRoute(builder: (context) => ProfileShowPage()));
// //           },
// //         ),
// //       ],
// //     );
// //   }
// // }

// class IcnBtn extends StatelessWidget {
//   final dynamic onpressed;
//   final Icon icon;
//   final Color? color;
//   const IcnBtn({
//     super.key,
//     this.onpressed,
//     required this.icon,
//     this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       splashRadius: 25.0,
//       color: Colors.black,
//       icon: icon,
//       onPressed: onpressed,
//     );
//   }
// }

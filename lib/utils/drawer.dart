// import 'package:flutter/material.dart';

// import 'tokens.dart';
// import 'urlname_navigation.dart';

// class drawer extends StatelessWidget {
//   const drawer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Drawer(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
//                     child: InkWell(
//                       onTap: () {
//                         // Navigator.push(
//                         //     context,
//                         //     MaterialPageRoute(
//                         //         builder: ((context) => ProfilScreen())));
//                       },
//                       child: const CircleAvatar(
//                         radius: 25,
//                         child: Icon(Icons.person),
//                       ),
//                     ),
//                   ),
//                   const Text(
//                     "User",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                   )
//                 ],
//               ),
//               // for (int i = 0; i < drawerItemLst.length; i++)
//               //   DrawerListTile(
//               //       icon: drawerItemLst[i]['icon'],
//               //       text: drawerItemLst[i]['text'],
//               //       child: drawerItemLst[i]['child']),

//               DrawerListTile(
//                 icon: const Icon(Icons.logout),
//                 text: "LogOut",
//                 ontap: () => {
//                   logout(),
//                   navigationPushReplacement(context, const SignInPage())
//                 },
//               ),

//               // DrawerListTile(
//               //   icon: Icon(Icons.home),
//               //   text: "Home",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.support_agent_outlined),
//               //   text: "Customer support chat",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.wallet_giftcard_outlined),
//               //   text: "Wallet trangactions",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.shopping_bag_outlined),
//               //   text: "Order history",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.wallet_membership),
//               //   text: "Buy membership",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.shopping_cart),
//               //   text: "Astromall",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.report),
//               //   text: "Get report",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.chat_bubble_outline),
//               //   text: "Chat with astro",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.chat_sharp),
//               //   text: "Chat with counselors",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.follow_the_signs),
//               //   text: "My following",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.free_breakfast),
//               //   text: "Free services",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.login),
//               //   text: "Signup as Astrologer",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.settings),
//               //   text: "Setting",
//               //   ontap: () {},
//               // ),
//               // DrawerListTile(
//               //   icon: Icon(Icons.logout),
//               //   text: "LogOut",
//               //   ontap: ()  logout(),
//               // ),
//               Container(
//                 margin: const EdgeInsets.only(top: 10),
//                 width: double.infinity,
//                 height: 0.5,
//                 color: Colors.black,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DrawerListTile extends StatelessWidget {
//   final Icon icon;
//   final String text;
//   final Function()? ontap;
//   final Widget? child;
//   const DrawerListTile(
//       {super.key,
//       required this.icon,
//       required this.text,
//       this.ontap,
//       this.child});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 45,
//       child: Center(
//         child: ListTile(
//           minLeadingWidth: 10,
//           dense: true,
//           leading: icon,
//           title: Text(
//             text,
//             style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
//           ),
//           onTap: ontap ?? () => navigationPush(context, child!),
//         ),
//       ),
//     );
//   }
// }

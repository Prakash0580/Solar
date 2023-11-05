// import 'package:astsel/utils/request_urlname.dart';
// import 'package:flutter/material.dart';
// import 'common_style.dart';

// class TitleData extends StatelessWidget {
//   const TitleData({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//         stream: StreamApiMethod.putDioHeaderRequest(URLName.chatSellerStatusUrl,
//             data: {"is_online": true}),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             dynamic snapData = snapshot.data;
//             if (snapData['success'] == 1) {
//               snackBar(context, snapData['msg']);
//               return const Center(
//                 child: Text('Error'),
//               );
//             } else {
//               dynamic prodList = snapData['data'];
//               return Container(
//                   child: prodList.isNotEmpty
//                       ? Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               '${prodList['name']}',
//                               style: const TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w600),
//                             ),
//                             Text(
//                               '${prodList['email']}',
//                               style:
//                                   TextStyle(fontSize: 12, color: Colors.black),
//                             ),
//                           ],
//                         )
//                       : const Center(
//                           child: Text('No Data'),
//                         ));
//             }
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else {
//             return const Center(child: CircularProgressIndicator());
//           }
//         });
//   }
// }

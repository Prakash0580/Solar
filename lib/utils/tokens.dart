// import 'dart:convert';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// tokenDecode(String code) {
//   String normalizedSource = base64Url.normalize(code.split(".")[1]);
//   Map valueMap = json.decode(utf8.decode(base64Url.decode(normalizedSource)));
//   return valueMap;
// }

// // !  Create Token DataBaSe
// class TokensDbs {
//   final tokenBox = Hive.box('authtoken_Box');

//   // // Create Database for Tokens
//   storeToken() {
//     final data = tokenBox.keys.map((key) {
//       final value = tokenBox.get(key);
//       return {
//         "key": key,
//         "token": value['token'],
//         // "profileStatus": value['profileStatus']
//       };
//     }).toList();

//     return data.reversed.toList();
//   }

//   // // Create a single item
//   Future<void> createItem(Map<String, dynamic> newItem) async {
//     await tokenBox.add(newItem);
//   }

//   // // Read a single item
//   Future readItem(int? key) async {
//     List<dynamic> data = storeToken();

//     if (data.isNotEmpty) {
//       final item = await tokenBox.get(key);
//       return item;
//     }
//     return false;
//   }

// // // Delete a single item
//   Future deleteItem(int itemKey) async {
//     await tokenBox.delete(itemKey);
//   }

//   Future<void> clearItem() async {
//     await tokenBox.clear();
//   }
// }

// // ! ============================================================================================================
// // ! Token mETHOD
// class Tokens {
//   static setCurrentUser(token, {String? profileStatus}) async {
//     await TokensDbs().clearItem();
//     if (token != null) {
//       TokensDbs().createItem({
//         "token": token,
//         // "profileStatus": profileStatus
//       });
//     }
//     getCurrentUser();
//   }

//   // Future getCurrentUser() async {
//   //   dynamic tokn = await TokensDbs().readItem(0);
//   //   return tokn;
//   // }

//   static getCurrentUser() async {
//     dynamic tokn = await TokensDbs().readItem(0);
//     return tokn != false ? tokn['token'] : false;
//   }

//   static userTokenData() async {
//     dynamic tokn = await TokensDbs().readItem(0);
//     return tokn != false ? tokenDecode(tokn['token']) : false;
//   }
// }

// // // ! LOGOUT METHOD
// Future<void> logout() async {
//   await TokensDbs().deleteItem(0);
//   await TokensDbs().clearItem();
// }

// // // ! check authenticate
// // checkAuth() async {
// //   Tokens tokn = Tokens();
// //   dynamic datas = await tokn.getCurrentUser();

// //   dynamic usrId = tokenDecode(datas['token']);

// //   if (datas != false) {
// //     return {"token": usrId, "auth": true};
// //     // if (datas['profileStatus'] == 'notcreate') {
// //     //   return 0; //  profile page
// //     // }
// //     // if (datas['profileStatus'] == 'pending') {
// //     //   return 1; // profile status
// //     // }

// //     // if (datas['profileStatus'] == 'accept') {
// //     //   return 2; // dashbaord
// //     // }

// //     // return {"auth": true, "profileStatus": };
// //   } else {
// //     return false;
// //   }
// // }

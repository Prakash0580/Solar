// // import 'package:web_socket_channel/web_socket_channel.dart';

// // // late IO.Socket socket;
// // // socketCon(String url, {dynamic token, dynamic myData}) async {
// // //   // String url1 = "http://10.0.2.2:5000";

// // //   try {
// // //     socket = IO.io(url, <String, dynamic>{
// // //       'transports': ['websocket'],
// // //       "autoconnect": false,
// // //       'auth': {"usrId": token},
// // //     });

// // //     socket.connect();
// // //     socket.onConnect((data) => {print(data)});
// // //     socket.onDisconnect((_) => print('disconnect'));

// // //     print(socket.connected);

// // //     // // Listen for the 'connected_users' event
// // //     // socket.on('connected_users', (data) {
// // //     //   myData = data;
// // //     // });
// // //   } catch (e) {
// // //     print(e);
// // //   }
// // // }

// // // socketDisconnectFun() {
// // //   socket.disconnect();
// // // }

// // class WebSocketManager {
// //   final WebSocketChannel channel;

// //   WebSocketManager(String url) : channel = IOWebSocketChannel.connect(url);

// //   Stream<dynamic> get stream => channel.stream;

// //   void sendMessage(senderId, receiverId, msg) {
// //     print("this is chat messae $senderId, $receiverId, $msg");
// //     // channel.sink.add(message);
// //     channel.sink.add('''{"action": "sendmessage",  "data":{
// //       "senderId": "$senderId" ,
// //       "receiverId":"$receiverId",
// //       "msg":"$msg" }}''');
// //   }

// //   void closeConnection() {
// //     channel.sink.close();
// //   }
// // }

// import 'package:web_socket_channel/web_socket_channel.dart';

// class WebSocketManager {
//   final WebSocketChannel channel;

//   WebSocketManager(String url)
//       : channel = WebSocketChannel.connect(Uri.parse(url));

//   Stream<dynamic> get mystream => channel.stream;

//   void sendProfile(String userId) {
//     print("sendProfile $userId");

//     channel.sink.add(
//         '''{"action":"sendProfile", "data":{ "userType": "Seller", "id": "$userId" }}''');
//   }

//   void sendMessage(senderId, receiverId, msg) {
//     print(
//         "this is chat messae senderId=> $senderId, receiverId=> $receiverId, $msg");
//     // channel.sink.add(message);
//     channel.sink.add(
//         '''{"action": "sendMessage",  "data":{
//       "senderId": "$senderId" , 
//       "receiverId":"$receiverId", 
//       "msg":"$msg"}}''');
//   }

//   void closeConnection() {
//     channel.sink.close();
//   }
// }

// class WebSocketNotificationManager {
//   final WebSocketChannel channel;

//   WebSocketNotificationManager(String url)
//       : channel = WebSocketChannel.connect(Uri.parse(url));

//   Stream<dynamic> get stream => channel.stream;

//   void notificationSend(
//       {required String customerId, required String sellerId}) {
//     // print(
//     //     "this is notification sellerId => $sellerId, customerId=> $customerId");
//     // channel.sink.add(message);
//     channel.sink.add(
//         '''{"action": "notificationResponse",  
//         "data":{"userType":"Seller",
//         "customerId":"$customerId",
//         "sellerId": "$sellerId" }}''');
//   }

//   void closeConnection() {
//     channel.sink.close();
//   }
// }

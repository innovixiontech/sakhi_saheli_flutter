// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'connectivityController.dart';
//
// class Internetawarewidget extends StatelessWidget {
//   final Widget child;
//   const Internetawarewidget({super.key, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     final InternetController internetController = Get.put(InternetController());
//     return Obx(() {
//       return internetController.isConnected.value
//           ? child
//           : const Scaffold(
//               body: Column(
//                 children: [Center(child: Text('No Internet Access Available'))],
//               ),
//             );
//     });
//   }
// }

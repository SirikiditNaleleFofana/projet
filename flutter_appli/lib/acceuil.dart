// import 'dart:html';

// //import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // import 'accuit.dart';
// import 'main.dart';

// // ignore: camel_case_types
// class acceuil extends StatelessWidget {
//   const acceuil({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // final items = <Widget>[
//     //   const Icon(
//     //     Icons.home,
//     //     size: 30,
//     //   ),
//     //   const Icon(
//     //     Icons.camera,
//     //     size: 30,
//     //   ),
//     //   const Icon(
//     //     Icons.supervised_user_circle_rounded,
//     //     size: 30,
//     //   ),
//     // ];
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.supervised_user_circle_sharp),
//               tooltip: 'Open shopping cart',
//               onPressed: () {
//                 // handle the press
//               },
//             ),
//           ],
//           title: const Text("Home"),
//           backgroundColor: const Color.fromARGB(255, 5, 53, 92),
//         ),
//         drawer: const NavigationDrawer(),
//         body: Container(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               const Center(
//                 child: Text(
//                   "DEVEPPEUR FLUTTER",
//                   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         // bottomNavigationBar: CurvedNavigationBar(items: items),
//       ),
//     );
//   }
// }

// class NavigationDrawer extends StatelessWidget {
//   const NavigationDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // throw UnimplementedError();
//     return Drawer(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             buildHeader(context),
//             buildMenuItems(context),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget buildHeader(BuildContext context) => Container(
//       padding: const EdgeInsets.only(top: 20, left: 50.0),
//     );
// Widget buildMenuItems(BuildContext context) => Column(
//       children: [
//         Row(
//           children: [
//             Row(
//               children: const [
//                 Image(
//                   image: AssetImage('assets/image/testrefait.png'),
//                   height: 100,
//                   width: 100,
//                 ),
//                 SizedBox(
//                   width: 15.0,
//                 ),
//                 SizedBox(
//                   width: 150,
//                   child: Text(
//                     'Fofana Siriki',
//                     style: TextStyle(
//                         fontSize: 30, color: Color.fromARGB(255, 5, 53, 92)),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         const Divider(
//           color: Colors.black,
//         ),
//         ListTile(
//           leading: const Icon(
//             Icons.home_outlined,
//             size: 30,
//           ),
//           title: const Text(
//             "Menu",
//             style: TextStyle(fontSize: 25),
//           ),
//           onTap: () {},
//         ),
//         ListTile(
//           leading: const Icon(
//             Icons.headphones_rounded,
//             size: 30,
//           ),
//           title: const Text(
//             "About",
//             style: TextStyle(fontSize: 25),
//           ),
//           onTap: () {},
//         ),
//         ListTile(
//           leading: const Icon(
//             Icons.settings,
//             size: 30,
//           ),
//           title: const Text(
//             "Setting",
//             style: TextStyle(fontSize: 25),
//           ),
//           onTap: () {},
//         ),
//         const SizedBox(
//           height: 350,
//         ),
//         const Divider(
//           color: Colors.black,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const <Widget>[
//             Icon(
//               Icons.facebook,
//               color: Color.fromARGB(255, 7, 62, 107),
//               size: 30.0,
//             ),
//             SizedBox(
//               width: 30.0,
//             ),
//             Icon(
//               FontAwesomeIcons.twitter,
//               color: Colors.blue,
//               size: 30.0,
//             ),
//             SizedBox(
//               width: 30.0,
//             ),
//             Image(
//               image: AssetImage('assets/image/image3.png'),
//               height: 24,
//               width: 24,
//             ),
//             SizedBox(
//               width: 35.0,
//             ),
//             Icon(
//               Icons.apple_sharp,
//               color: Colors.black54,
//               size: 30.0,
//             ),
//           ],
//         ),
//       ],
//     );

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:property_app/Screens/properties_screen.dart';

// class dashboard extends StatefulWidget {
//   @override
//   _dashboardState createState() => _dashboardState();
// }

// // ignore: camel_case_types
// class _dashboardState extends State<dashboard> {
//   int currentIndex = 1;

//   changeIndex(index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final authService = Provider.of<AuthService>(context);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 80.0, right: 250),
//               child: Center(
//                 child: Container(
//                   width: 200.0,
//                   height: 20.0,
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
//                   child: (const Text(
//                     'Hello',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.black),
//                   )),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 300.0, top: 1.0),
//               child: IconButton(
//                 icon: new Icon(Icons.account_circle, size: 30.0),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => PropertiesList(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 300.0, top: 5.0),
//               child: IconButton(
//                 icon: const Icon(
//                   Icons.notifications,
//                   size: 25.0,
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => PropertiesList(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 0.0),
//               child: Center(
//                 child: Container(
//                   width: 390,
//                   height: 450,
//                   decoration: BoxDecoration(
//                       color: Colors.green.shade100,
//                       borderRadius: BorderRadius.circular(10.0)),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(onPressed: () async {
//       //   // await authService.signOut();
//       // }),
//       //  : _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.green[100],
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book_online),
//             label: 'Page 1',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.read_more),
//             label: 'Page 2',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

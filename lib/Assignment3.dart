// import 'package:flutter/material.dart';

// class Assignment3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF8F9FA),
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         elevation: 50,
//         shadowColor: const Color.fromARGB(255, 219, 216, 216),

//         title: Text(
//           'Home',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             print("Menu Pressed");
//           },
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               print("Notification Pressed");
//             },
//             icon: Icon(Icons.notification_add),
//           ),
//         ],
//         iconTheme: const IconThemeData(color: Colors.white),
//         actionsIconTheme: const IconThemeData(color: Colors.white),
//       ),

//       //centerTitle: true,
//       body:
//        Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Card(
//               elevation: 0,
//               color: const Color(0xFFECE6F6),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Hello, Jomana!",
//                             style: TextStyle(
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             "Let's keep learning and\nreach your goals.",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     Image.network(
//                       'https://img.freepik.com/premium-vector/brunette-girl-looking-out-round-frame-teenager-waving-her-hand-circle-window-hole-vector-illustration_178650-30184.jpg',
//                       width: 120,
//                       height: 120,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),

//             Text(
//               "Quick Actions",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 15),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     Icon(Icons.menu_book, color: Colors.deepPurple, size: 40),
//                     SizedBox(height: 8),
//                     Text("Courses"),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Icon(Icons.bar_chart, color: Colors.green, size: 40),
//                     SizedBox(height: 8),
//                     Text("Progress"),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Icon(Icons.calendar_month, color: Colors.orange, size: 40),
//                     SizedBox(height: 8),
//                     Text("Schedule"),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 30),
//             Text(
//               "Continue Learning",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 12),

//             SizedBox(
//               height: 85,
//               width: double.infinity,
//               child: Card(
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),

//                 //padding:const EdgeInsets.all(16),
//                 child: ListTile(
//                   leading: Icon(Icons.book, color: Colors.deepPurple, size: 50),
//                   title: Text("Flutter Basics"),
//                   subtitle: Text("introduction to flutter and dart"),
//                 ),
//               ),
//             ),
//             SizedBox(height: 30),
//             Text(
//               "Upcoming",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 12),
//             SizedBox(
//               height: 85,
//               width: double.infinity,
//               child: Card(
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: ListTile(
//                   leading: Icon(
//                     Icons.calendar_month,
//                     color: const Color.fromARGB(255, 21, 180, 103),
//                     size: 50,
//                   ),
//                   title: Text("Dart prgramming"),
//                   subtitle: Text("May 20,2024.10:00 AM"),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                 ),
//               ),
//             ),

//             SizedBox(height: 30),
//           ],
//         ),
//       ),

//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, color: Colors.deepPurple, size: 30),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu_book, size: 30),
//             label: "Courses",
//           ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.bar_chart),
//           //   label: "Progress",
//           //),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, size: 30),
//             label: "Profile",
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class greeting extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         elevation: 0,

//         // أيقونة القائمة
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             print("Menu Pressed");
//           },
//         ),

//         // العنوان
//         title: Text(
//           "Home",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,

//         // أيقونة الإشعارات
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {
//               print("Notification Pressed");
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Hello,Jomana!",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),

//                 SizedBox(width: 100),

//                 Image.network(
//                   'https://cdn-icons-png.flaticon.com/128/3135/3135789.png',
//                   height: 80,
//                   width: 80,
//                 ),
//               ],
//             ),
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
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),

//             SizedBox(height: 15),

//             Card(
//               child: ListTile(
//                 leading: Icon(Icons.book, color: Colors.deepPurple),
//                 title: Text("Flutter Basics"),
//                 subtitle: Text("60% completed"),
//               ),
//             ),
//             SizedBox(height: 30),

//             Text(
//               "Quick Actions",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),

//             SizedBox(height: 15),

//             SizedBox(height: 30),

//             Text(
//               "Continue Learning",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),

//             SizedBox(height: 15),

//             Container(
//               padding: EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
//               ),
//               child: Row(
//                 children: [
//                   Icon(Icons.book, color: Colors.deepPurple, size: 40),

//                   SizedBox(width: 15),

//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Flutter Basics",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),

//                       SizedBox(height: 5),

//                       Text(
//                         "60% Completed",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: 30),

//             Text(
//               "Upcoming Classes",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),

//             SizedBox(height: 15),

//             ListTile(
//               leading: CircleAvatar(
//                 backgroundColor: Colors.orange.shade100,
//                 child: Icon(Icons.calendar_month, color: Colors.orange),
//               ),
//               title: Text("Dart Programming"),
//               subtitle: Text("10:00 AM"),
//               trailing: Icon(Icons.arrow_forward_ios),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.deepPurple,
//         unselectedItemColor: Colors.grey,
//         currentIndex: 0,
//         onTap: (index) {
//           print(index);
//         },
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu_book),
//             label: "Courses",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.bar_chart),
//             label: "Progress",
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
//     );
//   }
// }

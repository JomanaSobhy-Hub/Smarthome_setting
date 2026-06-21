// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   @override
//  // State<HomeScreen> createState() => _HomeScreenState();
// //}

// //class _HomeScreenState extends State<HomeScreen> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Login Page"),
//         backgroundColor: Colors.blueAccent,
//       ),

//       // 👇 الصفحات
//       body: IndexedStack(
//         index: currentIndex,
//         children: [
//           // ================= LOGIN =================
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: 30),

//                 Image.network(
//                   'https://images.seeklogo.com/logo-png/34/1/flutter-logo-png_seeklogo-349577.png',
//                   width: 180,
//                 ),

//                 SizedBox(height: 20),

//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20),
//                   child: TextField(
//                     controller: emailController,
//                     decoration: InputDecoration(
//                       labelText: "Email",
//                       prefixIcon: Icon(Icons.email),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20),
//                   child: TextField(
//                     controller: passwordController,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       labelText: "Password",
//                       prefixIcon: Icon(Icons.lock),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 ElevatedButton(
//                   onPressed: () {
//                     print(emailController.text);
//                     print(passwordController.text);
//                   },
//                   child: Text("Login"),
//                 ),
//               ],
//             ),
//           ),

//           // ================= HOME =================
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.home, size: 80, color: Colors.blue),
//                 SizedBox(height: 10),
//                 Text(
//                   "Welcome to Home Page 🏠",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),

//           // ================= profile =================
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.person, size: 80, color: Colors.grey),
//                 SizedBox(height: 10),
//                 Text("Jomana Sobhy", style: TextStyle(fontSize: 30)),
//                 Text('sobhyjomana2@gmail.com', style: TextStyle(fontSize: 15)),

//                 Container(
//                   width: 200,
//                   height: 100,

//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     //border: Border.all(color: Colors.blue, width: 2),
//                     borderRadius: BorderRadius.circular(12),
//                   ),

//                   child: Center(
//                     child: Text(
//                       "Personal Info",
//                       style: TextStyle(
//                         fontSize: 10,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),

//       // 👇 Bottom Navigation
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.blueAccent,
//         currentIndex: currentIndex,
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }

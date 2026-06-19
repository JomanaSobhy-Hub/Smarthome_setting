import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 50,
        shadowColor: const Color.fromARGB(255, 219, 216, 216),

        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("Menu Pressed");
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Notification Pressed");
            },
            icon: Icon(Icons.notification_add),
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        actionsIconTheme: const IconThemeData(color: Colors.white),
      ),

      //centerTitle: true,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 0,
              color: const Color(0xFFECE6F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hello, Jomana!",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Let's keep learning and\nreach your goals.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // هنا بنحط الصورة (تقدري تستبدليها بـ Image.asset لو عندك الملف)
                    Image.network(
                      'https://img.freepik.com/premium-vector/brunette-girl-looking-out-round-frame-teenager-waving-her-hand-circle-window-hole-vector-illustration_178650-30184.jpg',
                      width: 120,
                      height: 120,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            Text(
              "Quick Actions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.menu_book, color: Colors.deepPurple, size: 40),
                    SizedBox(height: 8),
                    Text("Courses"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.bar_chart, color: Colors.green, size: 40),
                    SizedBox(height: 8),
                    Text("Progress"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.calendar_month, color: Colors.orange, size: 40),
                    SizedBox(height: 8),
                    Text("Schedule"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Continue Learning",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            SizedBox(
              height: 85,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),

                //padding:const EdgeInsets.all(16),
                child: ListTile(
                  leading: Icon(Icons.book, color: Colors.deepPurple, size: 50),
                  title: Text("Flutter Basics"),
                  subtitle: Text("introduction to flutter and dart"),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Upcoming",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 85,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.calendar_month,
                    color: const Color.fromARGB(255, 21, 180, 103),
                    size: 50,
                  ),
                  title: Text("Dart prgramming"),
                  subtitle: Text("May 20,2024.10:00 AM"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.deepPurple, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book, size: 30),
            label: "Courses",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.bar_chart),
          //   label: "Progress",
          //),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Assignment3 extends StatelessWidget {
//   const Assignment3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF8F9FA), // لون خلفية التطبيق الهادي
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple, // لون الـ AppBar البنفسجي
//         elevation: 0,
//         title: const Text(
//           "Home",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.menu, color: Colors.white),
//           onPressed: () {},
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications, color: Colors.white),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 1. كارد الترحيب (Greeting Card)
//             Card(
//               elevation: 0,
//               color: const Color(0xFFECE6F6), // لون خلفية الكارد الفاتح
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
//                             "Hello, Rahul!",
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
//                     // هنا بنحط الصورة (تقدري تستبدليها بـ Image.asset لو عندك الملف)
//                     const Icon(
//                       Icons.person_pin,
//                       size: 80,
//                       color: Colors.deepPurple,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),

//             // عنوان Quick Actions
//             const Text(
//               "Quick Actions",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 12),

//             // 2. الـ Row بتاع الـ Quick Actions
//             Row(
//               children: [
//                 _buildQuickActionItem(
//                   Icons.book,
//                   "My Courses",
//                   Colors.deepPurple,
//                 ),
//                 _buildQuickActionItem(
//                   Icons.bar_chart,
//                   "Progress",
//                   Colors.green,
//                 ),
//                 _buildQuickActionItem(
//                   Icons.calendar_month,
//                   "Schedule",
//                   Colors.orange,
//                 ),
//               ],
//             ),
//             const SizedBox(height: 24),

//             // عنوان Continue Learning
//             const Text(
//               "Continue Learning",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 12),

//             // 3. كارد Continue Learning مع الـ Progress Indicator
//             Card(
//               elevation: 0,
//               color: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//                 side: BorderSide(color: Colors.grey.shade200),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.all(12),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFFECE6F6),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: const Icon(Icons.book, color: Colors.deepPurple),
//                     ),
//                     const SizedBox(width: 16),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Flutter Basics",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Text(
//                             "Introduction to Flutter and Dart",
//                             style: TextStyle(
//                               color: Colors.grey[600],
//                               fontSize: 12,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           Row(
//                             children: [
//                               const Expanded(
//                                 child: LinearProgressIndicator(
//                                   value: 0.6, // يعني 60%
//                                   backgroundColor: Color(0xFFECE6F6),
//                                   color: Colors.deepPurple,
//                                 ),
//                               ),
//                               const SizedBox(width: 8),
//                               Text(
//                                 "60%",
//                                 style: TextStyle(
//                                   color: Colors.grey[600],
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),

//             // عنوان Upcoming
//             const Text(
//               "Upcoming",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 12),

//             // 4. الـ ListTile الخاص بـ Upcoming
//             Card(
//               elevation: 0,
//               color: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//                 side: BorderSide(color: Colors.grey.shade200),
//               ),
//               child: ListTile(
//                 leading: Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.green.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: const Icon(Icons.calendar_today, color: Colors.green),
//                 ),
//                 title: const Text(
//                   "Dart Programming",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 subtitle: const Text("May 20, 2024 • 10:00 AM"),
//                 trailing: const Icon(Icons.chevron_right, color: Colors.grey),
//               ),
//             ),
//           ],
//         ),
//       ),

//       // 5. شريط التنقل السفلي (BottomNavigationBar)
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.deepPurple,
//         unselectedItemColor: Colors.grey,
//         currentIndex: 0, // الصفحة الحالية (Home)
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

//   // الـ Widget المساعد لعمل عناصر الـ Quick Actions عشان م نكررش الكود
//   Widget _buildQuickActionItem(IconData icon, String title, Color iconColor) {
//     return Expanded(
//       child: Card(
//         elevation: 0,
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//           side: BorderSide(color: Colors.grey.shade200),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 16.0),
//           child: Column(
//             children: [
//               Icon(icon, color: iconColor, size: 28),
//               const SizedBox(height: 8),
//               Text(
//                 title,
//                 style: const TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:nti_project/core/utils/app_colors.dart';
// import 'package:nti_project/core/widgets/app_drawer.dart';
// import 'package:nti_project/features/home/ShowScreen.dart';

// class SHedited extends StatefulWidget {
//   const SHedited({super.key});

//   @override
//   State<SHedited> createState() => _SHeditedState();
// }

// class _SHeditedState extends State<SHedited> {
//   // 1. تعريف متغيرات التحكم في حالة الأجهزة (On / Off)
//   bool isMainLightOn = false;
//   bool isThermostatOn = false;
//   bool isAcUnitOn = false;
//   bool isFrontDoorLocked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroungColor,
//       appBar: AppBar(
//         backgroundColor: AppColors.backgroungColor,
//         title: const Text(
//           'My Home',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         actions: [
//           Container(
//             padding: const EdgeInsets.all(1),
//             margin: const EdgeInsets.all(12),
//             child: CircleAvatar(
//               backgroundColor: AppColors.smallcont,
//               child: const Text(
//                 'JS',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       drawer: MainDrawer(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(20)),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Wednesday, June 20',
//                   style: TextStyle(fontSize: 16, color: Colors.grey),
//                 ),
//                 const SizedBox(height: 9),
//                 Text.rich(
//                   TextSpan(
//                     text: 'Good evening, ',
//                     style: const TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: 'Jomana',
//                         style: TextStyle(color: AppColors.smallcont),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//                 const Text(
//                   'You have 3 rooms active and 12 devices running right now',
//                   style: TextStyle(fontSize: 16, color: Colors.grey),
//                 ),
//                 const SizedBox(height: 24),

//                 // --- الجزء الخاص بالـ Weather/Status (أفقي) ---
//                 SizedBox(
//                   width: double.infinity,
//                   height: 110,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       _buildStatusCard(
//                         Icons.thermostat,
//                         '22°C',
//                         'Inside',
//                         Colors.blueGrey,
//                       ),
//                       _buildStatusCard(
//                         Icons.sunny,
//                         '18°C',
//                         'Outside',
//                         Colors.orange,
//                       ),
//                       _buildStatusCard(
//                         Icons.opacity,
//                         '58%',
//                         'Humidity',
//                         Colors.blue,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 24),

//                 // --- الجزء الخاص بالـ Rooms ---
//                 Row(
//                   children: [
//                     const Text(
//                       'Room',
//                       style: TextStyle(fontSize: 19, color: Colors.black),
//                     ),
//                     const Spacer(),
//                     GestureDetector(
//                       onDoubleTap: null,
//                       child: const Text('see all'),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),

//                 // قائمة الغرف (Vertical ListView)
//                 SizedBox(
//                   width: double.infinity,
//                   height:
//                       280, // تم تكبير الارتفاع قليلاً ليعطي مساحة مريحة للعناصر الثلاثة
//                   child: ListView(
//                     physics:
//                         const NeverScrollableScrollPhysics(), // لمنع التداخل لأننا داخل SingleChildScrollView الرئيسي
//                     children: [
//                       _buildRoomItem(
//                         context,
//                         'https://tse3.mm.bing.net/th/id/OIP.ho7QLJRBtJlqKjTfWhMblwHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
//                         'Living Room',
//                         '4 devices . 22°C',
//                       ),
//                       const SizedBox(height: 12),
//                       _buildRoomItem(
//                         context,
//                         'https://tse1.mm.bing.net/th/id/OIP.lyb29fcPu3zVpgnh-YEuqQHaEL?w=800&h=451&rs=1&pid=ImgDetMain&o=7&rm=3',
//                         'BedRoom',
//                         '3 devices . 20°C',
//                       ),
//                       const SizedBox(height: 12),
//                       _buildRoomItem(
//                         context,
//                         'https://static.vecteezy.com/system/resources/previews/028/137/999/non_2x/kitchen-and-dining-area-in-a-large-house-photo.jpg',
//                         'Kitchen',
//                         '5 devices . 24°C',
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 24),

//                 // --- الجزء الخاص بالـ Devices السطر المطلوبة الإضافة بعده ---
//                 Row(
//                   children: [
//                     const Text(
//                       'Devices',
//                       style: TextStyle(
//                         fontSize: 19,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const Spacer(),
//                     Container(
//                       width: 28,
//                       height: 28,
//                       decoration: BoxDecoration(
//                         color: const Color(0xff2D4A3E),
//                         borderRadius: const BorderRadius.all(
//                           Radius.circular(8),
//                         ),
//                       ),
//                       child: const Icon(Icons.add, color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),

//                 // 2.  إضافة الـ GridView التفاعلي هنا مباشرة تحت سطر Devices
//                 GridView.count(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 16,
//                   childAspectRatio: 0.95,
//                   children: [
//                     SmartHomeCard(
//                       icon: Icons.lightbulb_outline,
//                       title: 'Main Light',
//                       status: isMainLightOn ? 'On' : 'Off',
//                       isSwitchedOn: isMainLightOn,
//                       onSwitchChanged: (value) {
//                         setState(() => isMainLightOn = value);
//                       },
//                     ),
//                     SmartHomeCard(
//                       icon: Icons.thermostat,
//                       title: 'Thermostat',
//                       status: '22°C · Auto',
//                       isSwitchedOn: isThermostatOn,
//                       onSwitchChanged: (value) {
//                         setState(() => isThermostatOn = value);
//                       },
//                     ),
//                     SmartHomeCard(
//                       icon: Icons.air,
//                       title: 'AC Unit',
//                       status: isAcUnitOn ? 'On' : 'Off',
//                       isSwitchedOn: isAcUnitOn,
//                       onSwitchChanged: (value) {
//                         setState(() => isAcUnitOn = value);
//                       },
//                     ),
//                     SmartHomeCard(
//                       icon: Icons.lock_open,
//                       title: 'Front Door',
//                       status: isFrontDoorLocked ? 'Locked' : 'Unlocked',
//                       isSwitchedOn: isFrontDoorLocked,
//                       onSwitchChanged: (value) {
//                         setState(() => isFrontDoorLocked = value);
//                       },
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 24),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // دالة مساعدة لتبسيط وتجميل كود كروت الطقس والحالة العلوي
//   Widget _buildStatusCard(
//     IconData icon,
//     String value,
//     String title,
//     Color iconColor,
//   ) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 6),
//       width: 113,
//       decoration: BoxDecoration(
//         color: AppColors.containerColor,
//         borderRadius: const BorderRadius.all(Radius.circular(16)),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, color: iconColor, size: 28),
//           const SizedBox(height: 8),
//           Text(
//             value,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
//         ],
//       ),
//     );
//   }

//   // دالة مساعدة لتبسيط كود عناصر الغرف (Rooms List)
//   Widget _buildRoomItem(
//     BuildContext context,
//     String imageUrl,
//     String roomName,
//     String subtitle,
//   ) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 4),
//       height: 77,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.all(Radius.circular(16)),
//       ),
//       child: ListTile(
//         leading: ClipRRect(
//           borderRadius: const BorderRadius.all(Radius.circular(16)),
//           child: Image.network(
//             imageUrl,
//             width: 80,
//             height: 100,
//             fit: BoxFit.cover,
//           ),
//         ),
//         title: Text(
//           roomName,
//           style: const TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.black87,
//           ),
//         ),
//         subtitle: Text(
//           subtitle,
//           style: const TextStyle(fontSize: 14, color: Colors.grey),
//         ),
//         trailing: IconButton(
//           icon: const Icon(Icons.arrow_forward_ios),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => Showscreen()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// // 3.  كلاس الـ SmartHomeCard المخصص بالتصميم المطلوب
// class SmartHomeCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String status;
//   final bool isSwitchedOn;
//   final ValueChanged<bool> onSwitchChanged;

//   const SmartHomeCard({
//     super.key,
//     required this.icon,
//     required this.title,
//     required this.status,
//     required this.isSwitchedOn,
//     required this.onSwitchChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(24),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.03),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             width: 45,
//             height: 45,
//             decoration: BoxDecoration(
//               color: const Color(0xFFAAAAAA).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(icon, color: const Color(0xFF2D4A3E), size: 24),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF1A1A1A),
//                 ),
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 status,
//                 style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
//               ),
//             ],
//           ),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: Transform.scale(
//               scale: 0.85,
//               child: Switch(
//                 value: isSwitchedOn,
//                 activeColor: Colors.white,
//                 activeTrackColor: const Color(0xFF2D4A3E),
//                 inactiveThumbColor: Colors.white,
//                 inactiveTrackColor: Colors.grey.shade300,
//                 onChanged: onSwitchChanged,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nti_project/core/utils/app_colors.dart';
import 'package:nti_project/core/widgets/app_drawer.dart';
import 'package:nti_project/features/home/ShowScreen.dart';

class SHedited extends StatefulWidget {
  @override
  State<SHedited> createState() => _SHeditedState();
}

class _SHeditedState extends State<SHedited> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroungColor,
        title: Text(
          'My Home',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.all(12),
            child: CircleAvatar(
              backgroundColor: AppColors.smallcont,
              child: Text(
                'JS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wednesday, June 20',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 9),
                Text.rich(
                  TextSpan(
                    text: 'Good evening, ',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Jomana',
                        style: TextStyle(color: AppColors.smallcont),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'You have 3 rooms active and 12 devices running right now',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 103,
                        width: 113,
                        decoration: BoxDecoration(
                          color: AppColors.containerColor,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.thermostat,
                              color: Colors.blueGrey,
                              size: 28,
                            ),
                            SizedBox(height: 8),
                            Text(
                              '22°C',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Inside',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 103,
                        width: 113,
                        decoration: BoxDecoration(
                          color: AppColors.containerColor,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.sunny, color: Colors.orange, size: 28),
                            SizedBox(height: 8),
                            Text(
                              '18°C',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Outside',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 103,
                        width: 113,
                        decoration: BoxDecoration(
                          color: AppColors.containerColor,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.opacity, color: Colors.blue, size: 28),
                            SizedBox(height: 8),
                            Text(
                              '58%',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Humidity',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 103,
                        width: 113,
                        decoration: BoxDecoration(
                          color: AppColors.containerColor,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.sunny, color: Colors.orange, size: 28),
                            SizedBox(height: 8),
                            Text(
                              '18°C',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Outside',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 103,
                        width: 113,
                        decoration: BoxDecoration(
                          color: AppColors.containerColor,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.thermostat,
                              color: Colors.blueGrey,
                              size: 28,
                            ),
                            SizedBox(height: 8),
                            Text(
                              '22°C',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Inside',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text(
                      'Room',
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                    Spacer(),
                    GestureDetector(onDoubleTap: null, child: Text('see all')),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      //first
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 77,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            child: Image.network(
                              'https://tse3.mm.bing.net/th/id/OIP.ho7QLJRBtJlqKjTfWhMblwHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
                              width: 80,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: const Text(
                            "Living Room",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          subtitle: const Text(
                            "4 devices . 22°C",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            mouseCursor: SystemMouseCursors.click,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => Showscreen()),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      //second
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 77,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            child: Image.network(
                              'https://tse1.mm.bing.net/th/id/OIP.lyb29fcPu3zVpgnh-YEuqQHaEL?w=800&h=451&rs=1&pid=ImgDetMain&o=7&rm=3',
                              width: 80,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: const Text(
                            "BedRoom",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          subtitle: const Text(
                            "3 devices . 20°C",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            mouseCursor: SystemMouseCursors.click,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => Showscreen()),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      //third
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 77,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            child: Image.network(
                              'https://static.vecteezy.com/system/resources/previews/028/137/999/non_2x/kitchen-and-dining-area-in-a-large-house-photo.jpg',
                              width: 80,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: const Text(
                            "Kitchen",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          subtitle: const Text(
                            "5 devices . 24°C",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            mouseCursor: SystemMouseCursors.click,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => Showscreen()),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'Devices',
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                    Spacer(),
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Color(0xff2D4A3E),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
  
}

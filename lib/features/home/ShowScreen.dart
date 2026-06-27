import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nti_project/core/utils/app_colors.dart';
import 'package:nti_project/core/widgets/app_text_field.dart';
import 'package:nti_project/features/home/SHedited.dart';

class Showscreen extends StatefulWidget {
  const Showscreen({super.key});

  @override
  State<Showscreen> createState() => _ShowscreenState();
}

class _ShowscreenState extends State<Showscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://tse1.mm.bing.net/th/id/OIP.lyb29fcPu3zVpgnh-YEuqQHaEL?w=800&h=451&rs=1&pid=ImgDetMain&o=7&rm=3',
                  fit: BoxFit.cover,
                  height: 300,
                  width: double.infinity,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SHedited()),
                      );
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 40),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 18,
                  child: Text(
                    'Bed room',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 18,
                  child: Text(
                    "3 devices . 20°C",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.thermostat, color: Colors.black87, size: 28),
                    SizedBox(height: 6),
                    Text(
                      ' 20°C',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 4),

                    Text(
                      "Temprature",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.opacity, color: Colors.black87, size: 30),
                    SizedBox(height: 8),
                    Text(
                      ' 55°%',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 4),

                    Text(
                      "Humadity",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.air, color: Colors.black87, size: 28),
                    SizedBox(height: 6),
                    Text(
                      ' Good',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Air Quality",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

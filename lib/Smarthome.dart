import 'package:flutter/material.dart';

class Smarthome extends StatelessWidget {
  const Smarthome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 244),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 242, 244),
        leading: Container(
          margin: const EdgeInsets.all(12),
          color: Colors.white,
          child: const Icon(Icons.menu, size: 33),
        ),
        title: const Text(
          'My Home',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.all(12),
            child: const CircleAvatar(
              backgroundColor: Colors.green,
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
      
      body: Padding(
        padding: const EdgeInsets.all(12),
        // تم إضافة SingleChildScrollView هنا لحل مشكلة الـ Overflow
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Wednesday, June 20',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 9),
              const Text.rich(
                TextSpan(
                  text: 'Good evening, ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Jomana',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'You have 3 rooms active and 12 devices running right \n now',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Column(
                    children: [
              Icon(Icons.thermostat, color: Colors.blueGrey, size: 28),
              SizedBox(height: 8),
              Text(
                '22°C',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              SizedBox(height: 4),
              Text(
                'Inside',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),]
                  ),
                 
                  Column(
                    children: [
              Icon(Icons.sunny, color: Colors.orange, size: 28),
              SizedBox(height: 8),
              Text(
                '18°C',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              SizedBox(height: 4),
              Text(
                'Outside',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),]
                    
                  ),
                  Column(
                   children: [
              Icon(Icons.opacity, color: Colors.blue, size: 28),
              SizedBox(height: 8),
              Text(
                '58%',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              SizedBox(height: 4),
              Text(
                'Humidity',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),]
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Rooms',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black87),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 90,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'https://tse3.mm.bing.net/th/id/OIP.ho7QLJRBtJlqKjTfWhMblwHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
                      width: 80,
                      height: 100,
                    ),
                    title: const Text("Living Room", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
                    subtitle: const Text("4 devices . 22°C",style: TextStyle(fontSize: 14, color: Colors.grey)),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 90,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'https://tse1.mm.bing.net/th/id/OIP.lyb29fcPu3zVpgnh-YEuqQHaEL?w=800&h=451&rs=1&pid=ImgDetMain&o=7&rm=3',
                      width: 80,
                      height: 100,
                    ),
                    title: const Text("BedRoom", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),),
                    subtitle: const Text("3 devices . 20°C",style: TextStyle(fontSize: 14, color: Colors.grey)),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 90,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'https://static.vecteezy.com/system/resources/previews/028/137/999/non_2x/kitchen-and-dining-area-in-a-large-house-photo.jpg',
                      width: 80,
                      height: 100,
                    ),
                    title: const Text("Kitchen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),),
                    subtitle: const Text("5 devices . 24°C",style: TextStyle(fontSize: 14, color: Colors.grey)),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.green, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart, size: 30),
            label: "Progress",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendar",
          ),
        ],
      ),
    );
  }
}

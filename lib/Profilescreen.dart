import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Profilescreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 231, 55, 198),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            // Image.network(
            //   'https://www.bing.com/th/id/OIP.V9CZHx6_rMlpRpVYEse39gHaLH?w=110&h=128&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
            // ),
            // Text("Jomana Sobhy", style: TextStyle(fontSize: 30)),
            // Text('sobhyjomana2@gmail.com', style: TextStyle(fontSize: 15)),
            Image.network(
              'https://www.bing.com/th/id/OIP.V9CZHx6_rMlpRpVYEse39gHaLH?w=110&h=128&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
              height: 150,
            ),
            Text(
              'Jomana',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'jomana@student.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Personal Info'),
              subtitle: Text('View and edit your personal details'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Education'),
              subtitle: Text('View your education details'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Progress'),
              subtitle: Text('check your learning progress'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              subtitle: Text('App Preferences and settings'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

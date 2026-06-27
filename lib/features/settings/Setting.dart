import 'package:flutter/material.dart';
import 'package:nti_project/core/utils/app_colors.dart';
import 'package:nti_project/core/widgets/app_drawer.dart';
import 'package:nti_project/features/auth/loginscreen.dart';

class Setting extends StatelessWidget {
  //  final String email;
  // final String pass;

  const Setting({
    super.key,
    // required this.email,
    // required this.pass,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      appBar: appBar() as PreferredSizeWidget?,
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(16),
                width: 550,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xFF2D4A3E),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                CircleAvatar(
           radius: 60,
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=500&auto=format&fit=crop'),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(

                    'Jomana',

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 22,

                      fontWeight: FontWeight.bold,

                    ),

                  ),
                  Text(

                    'sobhyjomana@gmail.com',

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,

                    ),

                  ),
                  

          ],),
          SizedBox(width: 20,),
                Icon(Icons.arrow_forward_ios,color: Colors.white,)  ],
           
                )
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'ACCOUNTS',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10),
              accountcon(),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'PREFERENCES',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),

              SizedBox(height: 15),
              prefercont(),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'SYSTEM',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),

              SizedBox(height: 15),
              syscont(),
              SizedBox(height: 20),
              appsignout(context),
            ],
          ),
        ),
      ),

     // bottomNavigationBar: appBottomNav(),
    );
  }

  Container appsignout(BuildContext context) {
    return Container(

              width: double.infinity,
              height: 80,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white,
              ),
              child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: Container(
            
              width: 46,
              height: 50,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 245, 245),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: IconButton(
icon: Icon(Icons.logout_outlined,color: Colors.redAccent,size: 30,),
mouseCursor: SystemMouseCursors.click, 
onPressed: () {
  Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Loginscreen()),
            );
},
), 
            ),
          ),
          title: const Text(
            "Sign Out",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          subtitle: const Text(
            "Jomana Sobhy",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          trailing: IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            mouseCursor: SystemMouseCursors.click,
            onPressed: () {},
          ),
        ),

            );
  }

  Widget appBar() {
    return AppBar(
      backgroundColor: AppColors.backgroungColor,
      title: Text(
        'Smart Home',
        style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        Container(
          padding: const EdgeInsets.all(1),
          margin: const EdgeInsets.all(12),
          child: CircleAvatar(
            backgroundColor: Color(0xFF2D4A3E),
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
    );
  }

  Widget accountcon() {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.person, size: 40),
              ),
            ),
            title: const Text(
              "Profile",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "Jomana Sobhy",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              mouseCursor: SystemMouseCursors.click,
              onPressed: () {},
            ),
          ),
          Divider(height: 20, indent: 10, endIndent: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.remove_red_eye_outlined, size: 40),
              ),
            ),
            title: const Text(
              "Privacy",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "Manage & your data",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              mouseCursor: SystemMouseCursors.click,
              onPressed: () {},
            ),
          ),
          Divider(height: 20, indent: 10, endIndent: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.security_sharp, size: 40),
              ),
            ),
            title: const Text(
              "Security",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "Password 2FA enabled",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              mouseCursor: SystemMouseCursors.click,
              onPressed: () {},
            ),
          ),

          Divider(height: 20, indent: 10, endIndent: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.security_sharp, size: 40),
              ),
            ),
            title: const Text(
              "Security",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "Password 2FA enabled",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              mouseCursor: SystemMouseCursors.click,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget prefercont() {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.notifications_active, size: 40),
              ),
            ),
            title: const Text(
              "Notifications",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "Alerts & reminders",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: const Icon(Icons.swap_horizontal_circle_sharp),
          ),
          Divider(height: 20, indent: 10, endIndent: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.dark_mode, size: 40),
              ),
            ),
            title: const Text(
              "Dark Mode",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "Switch appearance",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: const Icon(Icons.swap_horizontal_circle_sharp),
          ),
          Divider(height: 20, indent: 10, endIndent: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.surround_sound_rounded, size: 40),
              ),
            ),
            title: const Text(
              "Sound Effects",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "Device feedback tones",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
              icon: Icon(Icons.swap_horizontal_circle_sharp),
              mouseCursor: SystemMouseCursors.click,
              onPressed: () {},
            ),
          ),
          Divider(height: 20, indent: 10, endIndent: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.location_on_outlined, size: 40),
              ),
            ),
            title: const Text(
              "Location",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "Used for automations",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
              icon: Icon(Icons.swap_horizontal_circle_sharp),
              mouseCursor: SystemMouseCursors.click,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget appBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      // currentIndex: _currentIndex, // تحديد العنصر الحالي
      // selectedItemColor: Colors.green, // لون العنصر النشط
      // unselectedItemColor: Colors.grey, // لون العناصر غير النشطة
      // onTap: (index) {
      //   setState(() {
      //     _currentIndex = index; // تحديث الحالة عند الضغط
      //   });
      // },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart, size: 30),
          label: "Progress",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Color(0xFF2D4A3E)),
          label: "Settings",
        ),
      ],
    );
  }

  Widget syscont() {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.mobile_friendly, size: 40),
              ),
            ),
            title: const Text(
              "Connected Devices",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "12 devices paired",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
  icon: Icon(Icons.arrow_forward_ios),
  mouseCursor: SystemMouseCursors.click, 
  onPressed: () {
  },
), 
          ),
          Divider(height: 20, indent: 10, endIndent: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.wifi, size: 40),
              ),
            ),
            title: const Text(
              "Wi-Fi&Network",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "HomeNet_5G",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
  icon: Icon(Icons.arrow_forward_ios),
  mouseCursor: SystemMouseCursors.click, 
  onPressed: () {
  },
), 
          ),
          Divider(height: 20, indent: 10, endIndent: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.help, size: 40),
              ),
            ),
            title: const Text(
              "Help&Support",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "FAQs and contacts",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
  icon: Icon(Icons.arrow_forward_ios),
  mouseCursor: SystemMouseCursors.click, 
  onPressed: () {
  },
), 
          ),
          Divider(height: 20, indent: 10, endIndent: 10),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: 46,
                height: 46,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 245, 245),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(Icons.info_outline, size: 40),
              ),
            ),
            title: const Text(
              "About",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: const Text(
              "Version 2.4.1",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: IconButton(
  icon: Icon(Icons.arrow_forward_ios),
  mouseCursor: SystemMouseCursors.click, 
  onPressed: () {
  },
), 
          ),
        ],
      ),
    );
  }
}

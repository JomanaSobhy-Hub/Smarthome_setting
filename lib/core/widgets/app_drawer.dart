import 'package:flutter/material.dart';
import 'package:nti_project/core/utils/app_colors.dart';
import 'package:nti_project/features/analytic/analytical.dart';
import 'package:nti_project/features/home/SHedited.dart';
import 'package:nti_project/features/settings/Setting.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.smallcont,
      
      child: Column(
        children: [
          const SizedBox(height: 50),
         UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF2C4A3E), // اللون الأخضر الداكن المتناسق مع تطبيق السمارات هوم
            ),
            currentAccountPicture:  CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('JS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
            ),
            accountName:  Text(
              "Jomana Sobhy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            accountEmail: Text(
              "sobhyjomana2@gmail.com",
              style: TextStyle(color: Colors.white70),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title:  Text('Home',style: TextStyle(color:  Color.fromARGB(255, 233, 227, 227)),),
                  leading:  Icon(Icons.home, color:  Color.fromARGB(255, 233, 227, 227),),
                  onTap: () {
                    //Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SHedited()),
                    );
                  },
                ),
                ListTile(
                  title:  Text('Profile',style: TextStyle(color:  Color.fromARGB(255, 233, 227, 227)),),
                 leading: Icon(Icons.person,color:  Color.fromARGB(255, 233, 227, 227),),
                  onTap: () {},
                ),
                ListTile(
                  title:  Text('Nontification',style: TextStyle(color:  Color.fromARGB(255, 233, 227, 227)),),
                 leading: Icon(Icons.notification_add,color:  Color.fromARGB(255, 233, 227, 227),),
                  onTap: () {},
                ),
                 ListTile(
                  title:  Text('Stats',style: TextStyle(color:  Color.fromARGB(255, 233, 227, 227)),),
                  leading:  Icon(Icons.bar_chart, color:  Color.fromARGB(255, 233, 227, 227),),
                  onTap: () {
                    //Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => analytical()),
                    );
                  },
                ),
                ListTile(
                  title:  Text('Schedule',style: TextStyle(color:  Color.fromARGB(255, 233, 227, 227)),),
                 leading: Icon(Icons.calendar_month,color:  Color.fromARGB(255, 233, 227, 227),),
                  onTap: () {},
                ),
                 ListTile(
                  title:  Text('settings',style: TextStyle(color:  Color.fromARGB(255, 233, 227, 227)),),
                  leading:  Icon(Icons.settings, color:  Color.fromARGB(255, 233, 227, 227),),
                  onTap: () {
                    //Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Setting()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nti_project/utils/app_colors.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      appBar: appBar() as PreferredSizeWidget?,
        drawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: const Text('item1'), onTap: () {}),
            ListTile(title: const Text('item2'), onTap: () {}),
            ListTile(title: const Text('item3'), onTap: () {}),
            ListTile(title: const Text('item4'), onTap: () {}),
          ],
        ),
      ),
      body:SingleChildScrollView(child:Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              width: 500,
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
           
           child: ListTile(
            leading: CircleAvatar(
              radius: 50,
              child: Container(),
              backgroundImage: NetworkImage('https://tse2.mm.bing.net/th/id/OIP.yLrufHY7Ku8Cjd4LJUDLfAAAAA?rs=1&pid=ImgDetMain&o=7&rm=3'),
            ),
             
            title:Text('Jomana',style:TextStyle(color:Colors.white,fontSize: 27,fontWeight: FontWeight.bold) ) ,
            subtitle:Text('sobhyjomana2@gmail.com',style:TextStyle(color:Colors.white,fontSize: 13,) ) ,
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
           )
           ,
            ),
            SizedBox(height: 20,),
Row(
                children: [
                  Text(
                    'ACCOUNTS',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
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
                    leading:ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: Container(
                        width: 46, height: 46,
                        padding: EdgeInsets.all(2),
                       decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 245, 245),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),     
                       child: Icon(Icons.person,size: 40,),              
                      
                      ) ,
                      
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
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                     height: 20,
                      indent: 10,
                     endIndent: 10,
                  ),
                   ListTile(
                    leading:ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: Container(
                        width: 46, height: 46,
                        padding: EdgeInsets.all(2),
                       decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 245, 245),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),     
                       child: Icon(Icons.remove_red_eye_outlined,size: 40,),              
                      
                      ) ,
                      
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
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                   Divider(
                     height: 20,
                     indent: 10,
                     endIndent: 10,
                  ),
                   ListTile(
                    leading:ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: Container(
                        width: 46, height: 46,
                        padding: EdgeInsets.all(2),
                       decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 245, 245),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),     
                       child: Icon(Icons.security_sharp,size: 40,),              
                      
                      ) ,
                      
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
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),

                   Divider(
                     height: 20,
                     indent: 10,
                     endIndent: 10,
                  ),
                   ListTile(
                    leading:ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: Container(
                        width: 46, height: 46,
                        padding: EdgeInsets.all(2),
                       decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 245, 245),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),     
                       child: Icon(Icons.security_sharp,size: 40,),              
                      
                      ) ,
                      
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
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),

                  ]
                  ),

                  

                  ),
                  SizedBox(height: 30,),
                  Row(
                children: [
                  Text(
                    'PREFERENCES',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                ],
              ),
                  
SizedBox(height: 15,),
                  Container(
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
                    leading:ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: Container(
                        width: 46, height: 46,
                        padding: EdgeInsets.all(2),
                       decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 245, 245),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),     
                       child: Icon(Icons.notifications_active,size: 40,),              
                      
                      ) ,
                      
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
                  Divider(
                     height: 20,
                      indent: 10,
                     endIndent: 10,
                  ),
                   ListTile(
                    leading:ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: Container(
                        width: 46, height: 46,
                        padding: EdgeInsets.all(2),
                       decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 245, 245),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),     
                       child: Icon(Icons.dark_mode,size: 40,),              
                      
                      ) ,
                      
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
                   Divider(
                     height: 20,
                     indent: 10,
                     endIndent: 10,
                  ),
                   ListTile(
                    leading:ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: Container(
                        width: 46, height: 46,
                        padding: EdgeInsets.all(2),
                       decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 245, 245),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                       ),     
                       child: Icon(Icons.security_sharp,size: 40,),              
                      
                      ) ,
                      
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
                    trailing: const Icon(Icons.swap_horizontal_circle_sharp),
                  ),

                  ]
                  ),

                  )


          ]),
      ) ,),
       
      bottomNavigationBar: appBottomNav(),
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
            backgroundColor:Color(0xFF2D4A3E) ,
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
          icon: Icon(Icons.settings,color:  Color(0xFF2D4A3E)),
          label: "Settings",
        ),
      ],
    );
  }
}

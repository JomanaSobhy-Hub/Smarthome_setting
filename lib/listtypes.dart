import 'package:flutter/material.dart';
import 'package:nti_project/utils/app_colors.dart';

class listtypes extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      appBar: appBar() as PreferredSizeWidget?,
      // appBar: AppBar(
      //   backgroundColor: AppColors.backgroungColor,
      //   title: Text(
      //     'My Home',
      //     style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
      //   ),
      //   centerTitle: true,
      //   actions: [
      //     Container(
      //       padding: const EdgeInsets.all(1),
      //       margin: const EdgeInsets.all(12),
      //       child: CircleAvatar(
      //         backgroundColor: Colors.green,
      //         child: Text(
      //           'JS',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
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
      body:  Padding(
  padding: const EdgeInsets.all(30.0),
  
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      appTextFieldName(),
      const SizedBox(height: 16),
      appTextFieldpass(),
      const SizedBox(height: 16),
      appButton(),
      const SizedBox(height: 20),
    ],
  ),
),

bottomNavigationBar: BottomNavigationBar(
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
            icon: Icon(Icons.home, size: 30, color: Colors.green),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart, size: 30),
            label: "Progress",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
  //////////////////////widgets function////////////////////

  GestureDetector appButton() {
    return GestureDetector(
      onTap: null,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        width: 360,
        height: 50,
        child: Center(child: Text('Sign UP')),
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
    );
  }

  Widget appTextFieldName() {
    return Container(
      width: 750,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
       // border:Border.all(color: Colors.blue,width: 2.0,style: BorderStyle.solid)
      ),

      child: TextField(
      cursorColor: Colors.green,
        controller: nameController,
        
        decoration: InputDecoration(
          
          hintText: "Enter your name",
          labelText: "Name",
          border: OutlineInputBorder(),
        ),
      ),
    );
    //   TextField(
    // controller: nameController,
    // decoration: InputDecoration(
    //   hintText: "Enter your name",
    //   labelText: "Name",
    //   border: OutlineInputBorder(),
    // ),),
  }

  Widget appTextFieldpass() {
    return Container(
      width: 750,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),

      child: TextField(
         cursorColor: Colors.green,
        controller: passwordController,
        decoration: InputDecoration(
          hintText: "Enter password",
          labelText: "Password",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

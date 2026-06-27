import 'package:flutter/material.dart';
import 'package:nti_project/Assignment3.dart';
import 'package:nti_project/core/widgets/app_pagecontroller.dart';
import 'package:nti_project/features/home/SHedited.dart';
import 'package:nti_project/features/auth/loginscreen.dart';
import 'package:nti_project/features/home/Home.dart';
import 'package:nti_project/features/home/ShowScreen.dart';
import 'package:nti_project/features/profile/Profilescreen.dart';
import 'package:nti_project/features/settings/Setting.dart';
import 'package:nti_project/features/home/Smarthome.dart';
import 'package:nti_project/features/analytic/analytical.dart';
import 'package:nti_project/features/home/greeting.dart';
import 'package:nti_project/features/auth/listtypes.dart';
import 'package:nti_project/features/auth/sign_up.dart';
import 'package:nti_project/core/api/state_full_widget_example.dart';
import 'package:nti_project/my_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Loginscreen(),

      //  Setting(),
      // initialRoute: '/',
      // routes: {'/': (context) => listtypes(), '/sett': (context) => Setting(email: 'omana@2006',pass: '1234',)},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nti_project/core/utils/app_colors.dart';
import 'package:nti_project/core/widgets/app_button.dart';
import 'package:nti_project/core/widgets/app_green_cont.dart';
import 'package:nti_project/core/widgets/app_text_field.dart';
import 'package:nti_project/features/auth/sign_up.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      backgroundColor: Color(0xFFE0DDD8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppGreenCont(
              height: 210,
              text1: 'Welcom back',
              text2: 'Sign in to your home',
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),

                app_text_field(
                  hintText: 'Enter your email',
                  text: 'Email address',
                ),
                SizedBox(height: 20),
                //Text('data'),
                app_text_field(
                  hintText: 'Enter your password',
                  text: 'Password',
                ),
                SizedBox(height: 30),
                AppButton(name: 'Sign In'),
                SizedBox(height: 20),

                bottomcontainers(),
                SizedBox(height: 20),
                donthaveaccount(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget appappbar() {
    return AppBar(
      backgroundColor: Colors.green,
      title: Text(
        'Login',

        style: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget donthaveaccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'you donot have account?',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
              // Navigator.pushNamed(context, '/sett');
            },

            child: Text(
              'Sign up',
              style: TextStyle(color: Color(0xFF2D4A3E), fontSize: 17),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomcontainers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      //crossAxisAlignment: ,
      children: [
        Container(
          width: 158,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, color: AppColors.smallcont),
            
              Text(
                'Google',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 158,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, color: AppColors.smallcont),
              Text(
                'Apple',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nti_project/features/analytic/analytical.dart';
import 'package:nti_project/features/home/SHedited.dart';
import 'package:nti_project/features/home/ShowScreen.dart';
import 'package:nti_project/features/settings/Setting.dart';

// 1. غيرنا اسم الكلاس هنا علشان ميتعارضش مع الـ PageController بتاع فلاتر
class MainScreenController extends StatefulWidget {
  const MainScreenController({super.key});

  @override
  State<MainScreenController> createState() => _MainScreenControllerState();
}

class _MainScreenControllerState extends State<MainScreenController> {
  // 2. هنا فلاتر هيعرف يقرا الـ PageController الصح الخاص بالـ PageView
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose(); // من الأفضل دايماً تقفلي الـ controller لما الشاشة تقفل
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [
          SHedited(),
          analytical(),
          Setting(),
          Showscreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Stats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
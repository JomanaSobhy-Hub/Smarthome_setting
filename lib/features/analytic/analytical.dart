import 'package:flutter/material.dart';
import 'package:nti_project/core/utils/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:nti_project/core/widgets/app_drawer.dart'; 

class analytical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroungColor,
      backgroundColor:  AppColors.backgroungColor,
      appBar: appBar() as PreferredSizeWidget?,
      drawer:MainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'this week',
                style: TextStyle(
                  color: const Color.fromARGB(255, 61, 60, 60),
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Energy usage',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              appgreencontainer(),
              SizedBox(height: 20),
              Text(
                'Daily Breakdown',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              //appchar(),
              appBuildDaily(),
              Text(
                'Top Consumers',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              apptopconsumers(
                title: "AC Unit",
                textt: "12.4 KWh",
                subtitle: "Bedroom",
                value: 0.8,
                icon: Icons.air,
              ),
              SizedBox(height: 10),

              apptopconsumers(
                title: "Refrigerator",
                textt: "9.8 KWh",
                subtitle: "Kitchen",
                value: 0.6,
                icon: Icons.ac_unit,
              ),
              SizedBox(height: 10),
              apptopconsumers(
                title: "Lighting",
                textt: "7.2 KWh",
                subtitle: "All rooms",
                value: 0.4,
                icon: Icons.lightbulb_circle_outlined,
              ),
              SizedBox(height: 8),
              apptopconsumers(
                title: "Thermostat",
                textt: "5.1 KWh",
                subtitle: "Living Room",
                value: 0.2,
                icon: Icons.thermostat,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),

     // bottomNavigationBar: appBottomNav(),
    );
  }

  Widget appBar() {
    return AppBar(
      backgroundColor: AppColors.backgroungColor,
      title: Text(
        'analytical',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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

  Widget appBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: [
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

  Widget appgreencontainer() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 170,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // الكلام
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total this month',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),

              Text(
                '48.2 KWH',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                '12 % VS last month',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ],
          ),

          // الشارت
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 10,

                titlesData: FlTitlesData(show: false),

                gridData: FlGridData(show: false),

                borderData: FlBorderData(show: false),

                barTouchData: BarTouchData(enabled: false),

                barGroups: [
                  bar(4),
                  bar(7),
                  bar(5),
                  bar(9),
                  bar(6),
                  bar(8),
                  bar(4),
                  bar(10),
                  bar(7),
                  bar(5),
                  bar(8),
                  bar(9, isLast: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData bar(double value, {bool isLast = false}) {
    return BarChartGroupData(
      x: value.toInt(),
      barRods: [
        BarChartRodData(
          toY: value,
          width: 12,
          borderRadius: BorderRadius.circular(4),
          color: isLast ? Colors.white : Color(0xff6D877C),
        ),
      ],
    );
  }

  Widget appchar() {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 227, 231, 232),
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
      child: Text('monday'),
    );
  }

  Widget appBuildDaily() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildDailyRow('Mon', 5.2, 10.0),
        buildDailyRow('Tue', 6.8, 10.0),
        buildDailyRow('Wed', 7.1, 10.0),
        buildDailyRow('Thu', 4.9, 10.0),
        buildDailyRow('Fri', 6.3, 10.0),
        buildDailyRow('Sat', 8.1, 10.0),
        buildDailyRow('Sun', 5.5, 10.0),

        const SizedBox(height: 40),
      ],
    );
  }

  Widget buildDailyRow(String day, double value, double maxValue) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 45,
            child: Text(
              day,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: value / maxValue,
                backgroundColor: const Color(0xFFEAEFEA),
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Color(0xFF2D4A3E),
                ), // نفس درجة أخضر الأبليكيشن بتاعك
                minHeight: 12,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$value',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                'kWh',
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget
  apptopconsumers( // هنا كل القيم مطلوبة ولازم تبعتها وأنت بتستدعي الدالة
  {
    required String title,
    required String textt,
    required String subtitle,
    required double value,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // الأيقونة (الـ AC Unit)
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F3F2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Color(0xFF4A7A66)),
          ),
          const SizedBox(width: 12),
          // النصوص والشريط
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$title',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '$textt',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // شريط التقدم أسفل النص
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: value, // نسبة الاستهلاك
                    backgroundColor: Color(0xFFEBEFEF),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFF4A7A66),
                    ),
                    minHeight: 6,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '$subtitle',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

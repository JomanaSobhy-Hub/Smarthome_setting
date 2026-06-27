import 'package:flutter/material.dart';

class AppGreenCont extends StatefulWidget {
  final String text1;
  final String text2;
  final int height;
  const AppGreenCont({
    super.key,
    required this.height,
    required this.text1,
    required this.text2,
  });

  @override
  State<AppGreenCont> createState() => _AppGreenContState();
}

class _AppGreenContState extends State<AppGreenCont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height.toDouble(),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF2D4A3E),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.home, color: Colors.white, size: 30),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.text1,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 156, 153, 153),
                ),
              ),
              SizedBox(height: 10),

              Text(
                widget.text2,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

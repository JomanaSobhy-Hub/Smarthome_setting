import 'package:flutter/material.dart';
import 'package:nti_project/core/widgets/app_pagecontroller.dart';
import 'package:nti_project/features/home/SHedited.dart';

class AppButton extends StatefulWidget {
  final String name;
  const AppButton({super.key, required this.name});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (_) =>
                MainScreenController(),
          ),
        );
        // Navigator
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF2D4A3E),
          borderRadius: BorderRadius.circular(12),
        ),
        height: 50,
        width: 420,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nti_project/core/utils/app_colors.dart';

class TopAppBar extends StatefulWidget {
  final String name;
  const TopAppBar({super.key,required this.name});

  @override
  State<TopAppBar> createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroungColor,
      title: Text(
        widget.name,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
}

import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
    counter = 10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This full statefull ${counter}')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

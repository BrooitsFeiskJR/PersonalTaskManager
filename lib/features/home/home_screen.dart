import 'package:flutter/material.dart';
import 'package:personal_task_manager/features/home/widgets/calender_widget.dart';
import 'package:personal_task_manager/features/home/widgets/header_home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderHomeScreen(),
              SizedBox(
                height: 25,
              ),
              Calendar(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_task_manager/features/projects/widgets/header_project_widget.dart';
import 'package:personal_task_manager/features/projects/widgets/project_info_widget.dart';
import 'package:personal_task_manager/features/projects/widgets/subtasks_widget.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderProject(),
              SizedBox(
                height: 30,
              ),
              ProjectInfo(),
              SizedBox(
                height: 30,
              ),
              Subtasks(),
            ],
          ),
        ),
      ),
    );
  }
}

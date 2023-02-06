import 'package:flutter/material.dart';
import 'package:personal_task_manager/features/projects/widgets/container_task_widget.dart';
import 'package:personal_task_manager/util/button_widget.dart';

class Subtasks extends StatelessWidget {
  const Subtasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Subtasks",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.only(left: 6),
          width: 320,
          height: 310,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) => const ContainerTask(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        const Button(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_task_manager/util/icon_container_widget.dart';

class HeaderProject extends StatelessWidget {
  const HeaderProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconContainer(
                icon: Icons.arrow_back_ios, size: 22, color: Colors.grey[600]),
            IconContainer(
                icon: Icons.edit_outlined, size: 22, color: Colors.grey[600]),
          ],
        ),
      ],
    );
  }
}

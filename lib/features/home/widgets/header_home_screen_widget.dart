import 'package:flutter/material.dart';
import 'package:personal_task_manager/util/icon_container_widget.dart';

class HeaderHomeScreen extends StatelessWidget {
  const HeaderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: const CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        IconContainer(
          icon: Icons.search,
          size: 22,
          color: Colors.white,
        )
      ],
    );
  }
}

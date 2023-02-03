import 'package:flutter/material.dart';

class HeaderProject extends StatelessWidget {
  const HeaderProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconContainer(Icons.arrow_back_ios, 22),
            iconContainer(Icons.edit_outlined, 22),
          ],
        ),
      ],
    );
  }

  Widget iconContainer(IconData icon, double size) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: (Colors.grey[400])!,
          )),
      child: Icon(
        icon,
        size: size,
        color: Colors.grey[600],
      ),
    );
  }
}

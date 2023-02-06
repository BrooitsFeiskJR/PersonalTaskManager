import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  IconContainer(
      {super.key, required this.icon, required this.size, required this.color});
  IconData icon;
  double size;
  Color? color;

  @override
  Widget build(BuildContext context) {
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
        color: color,
      ),
    );
  }
}

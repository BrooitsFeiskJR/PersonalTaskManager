import 'package:flutter/material.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.orange,
            width: 5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _text("PROJECT RESEARCH", FontWeight.bold, 26, Colors.black),
            const SizedBox(
              height: 10,
            ),
            _text("Analysis", FontWeight.w500, 20, (Colors.grey[700])!),
            const SizedBox(
              height: 10,
            ),
            _text("9:00-9:30 Google", FontWeight.bold, 18, (Colors.grey[400])!),
          ],
        ),
      ),
    );
  }

  Widget _text(
    String message,
    FontWeight fontWeight,
    double size,
    Color color,
  ) {
    return Text(
      message,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: size,
        color: color,
      ),
    );
  }
}

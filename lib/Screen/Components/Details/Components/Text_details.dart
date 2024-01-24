import 'package:flutter/material.dart';
class Text_details extends StatelessWidget {
  const Text_details({
    super.key, required this.title, required this.details,
  });
  final String title;
  final String details;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),),
        const SizedBox(height: 10),
        Text(details,
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
          ),),
        const SizedBox(height: 10),
      ],
    );
  }
}
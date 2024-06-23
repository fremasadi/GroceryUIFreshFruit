import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  const FormInput({
    required this.height,
    required this.width,
    required this.controller, // Use a TextEditingController to manage the input text
    required this.hintText, // Optional hint text for the TextField
  });

  final double height;
  final double width;
  final TextEditingController controller; // Controller to manage the input text
  final String? hintText; // Hint text for the TextField

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFE67F1E),
          width: 1, // Set the border width as needed
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0), // Adjust padding as needed
        child: TextField(
          controller:
              controller, // Assign the controller to manage the input text
          decoration: InputDecoration(
            border: InputBorder.none, // Remove the border of the input field
            hintText: hintText, // Set the hint text
          ),
        ),
      ),
    );
  }
}

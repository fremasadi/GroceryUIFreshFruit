import 'package:flutter/material.dart';

import '../theme.dart';

class BottomItem extends StatelessWidget {
  const BottomItem({
    required this.text,
    required this.color,
    required this.colorText,
    this.colorBorder,
    required this.onPress, // Jadikan colorBorder opsional
  });

  final String text;
  final Color color;
  final Color colorText;
  final Color? colorBorder;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: colorBorder != null
              ? Border.all(
                  color: colorBorder!,
                  width: 2,
                )
              : null, // Gunakan null jika colorBorder null
        ),
        child: TextButton(
          onPressed: onPress,
          child: Text(
            text,
            style: btnTextStyle.copyWith(fontSize: 16, color: colorText),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard(
      {super.key,
      required this.imageCategories,
      required this.width,
      required this.height,
      required this.imageWidth,
      required this.imageHeight});
  final String imageCategories;
  final double width;
  final double height;
  final double imageWidth;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 2),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(0, 4),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                imageCategories,
                height: imageHeight,
                width: imageWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

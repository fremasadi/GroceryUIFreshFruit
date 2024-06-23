import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecomendedCard extends StatelessWidget {
  const RecomendedCard(
      {required this.imageRecomended, required this.titleText});

  final String imageRecomended;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          imageRecomended,
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: Text(
            titleText,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/theme.dart';

class TrendingCard extends StatelessWidget {
  final String imageTrending;
  final String titleText;
  final String price;
  final VoidCallback onTap;

  const TrendingCard({
    Key? key,
    required this.imageTrending,
    required this.titleText,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              onTap: onTap,
              child: Image.asset(
                imageTrending,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 20,
            ),
          ),
          Positioned(
            bottom: 14.0,
            left: 14.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleText,
                  style: poppinsTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  price,
                  style: poppinsTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocery/pages/category_detail_screen.dart';
import 'package:grocery/theme.dart';
import 'package:grocery/widget/categories_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Categories',
            style: poppinsTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryDetailScreen()));
                },
                child: CategoriesCard(
                  imageCategories: 'assets/fruit.png',
                  width: 140,
                  height: 140,
                  imageWidth: 72,
                  imageHeight: 72,
                ),
              ),
              CategoriesCard(
                imageCategories: 'assets/vegetable.png',
                width: 140,
                height: 140,
                imageWidth: 72,
                imageHeight: 72,
              ),
              CategoriesCard(
                imageCategories: 'assets/mushroom.png',
                width: 140,
                height: 140,
                imageWidth: 72,
                imageHeight: 72,
              ),
              CategoriesCard(
                imageCategories: 'assets/dairy.png',
                width: 140,
                height: 140,
                imageWidth: 72,
                imageHeight: 72,
              ),
              CategoriesCard(
                imageCategories: 'assets/oats.png',
                width: 140,
                height: 140,
                imageWidth: 72,
                imageHeight: 72,
              ),
              CategoriesCard(
                imageCategories: 'assets/bread.png',
                width: 140,
                height: 140,
                imageWidth: 72,
                imageHeight: 72,
              ),
              CategoriesCard(
                imageCategories: 'assets/rice.png',
                width: 140,
                height: 140,
                imageWidth: 72,
                imageHeight: 72,
              ),
              CategoriesCard(
                imageCategories: 'assets/egg.png',
                width: 140,
                height: 140,
                imageWidth: 72,
                imageHeight: 72,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

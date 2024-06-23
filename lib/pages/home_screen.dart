import 'package:flutter/material.dart';
import 'package:grocery/theme.dart';
import 'package:grocery/widget/bottom_item.dart';
import 'package:grocery/widget/categories_card.dart';
import 'package:grocery/widget/recomended_card.dart';
import 'package:grocery/widget/trending_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFEFC),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: ListView(
            children: [
              SizedBox(
                height: 19,
              ),
              Text(
                'Good Morning',
                style: poppinsTextStyle.copyWith(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fremas Adi',
                    style: poppinsTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    RecomendedCard(
                      imageRecomended: 'assets/recomend1.png',
                      titleText: 'Recomended\nRecipe Today',
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    RecomendedCard(
                      imageRecomended: 'assets/recomend2.png',
                      titleText: '',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: poppinsTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 26,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                height: 73,
                width: 93,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoriesCard(
                      imageCategories: 'assets/categori1.png',
                      width: 93,
                      height: 73,
                      imageWidth: 40,
                      imageHeight: 40,
                    ),
                    CategoriesCard(
                      imageCategories: 'assets/categori2.png',
                      width: 93,
                      height: 73,
                      imageWidth: 40,
                      imageHeight: 40,
                    ),
                    CategoriesCard(
                      imageCategories: 'assets/categori3.png',
                      width: 93,
                      height: 73,
                      imageWidth: 40,
                      imageHeight: 40,
                    ),
                    CategoriesCard(
                      imageCategories: 'assets/categori4.png',
                      width: 93,
                      height: 73,
                      imageWidth: 40,
                      imageHeight: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending Deals',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 26,
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 50,
                mainAxisSpacing: 20,
                childAspectRatio: 0.75,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  TrendingCard(
                    imageTrending: 'assets/trending1.png',
                    titleText: 'Avocado',
                    price: '\$6.7',
                    onTap: () {},
                  ),
                  TrendingCard(
                    imageTrending: 'assets/trending1.png',
                    titleText: 'Broccoli',
                    price: '\$8.7',
                    onTap: () {},
                  ),
                  TrendingCard(
                    imageTrending: 'assets/trending1.png',
                    titleText: 'Tomatoes',
                    price: '\$4.9',
                    onTap: () {},
                  ),
                  TrendingCard(
                    imageTrending: 'assets/trending1.png',
                    titleText: 'Grapes',
                    price: '\$7.2',
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              BottomItem(
                  text: 'More',
                  color: Colors.black,
                  colorText: Colors.white,
                  onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}

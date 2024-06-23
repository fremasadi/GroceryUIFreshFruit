import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/pages/detail_screen.dart';
import 'package:grocery/theme.dart';
import 'package:grocery/widget/trending_card.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightYellowColor,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.arrow_back,
                              size: 34,
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Icon(
                            Icons.list,
                            size: 34,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Text(
                        'Fruits Category',
                        style: poppinsTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '87 item',
                        style: poppinsTextStyle.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 23,
                          ),
                          TextField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                labelText: 'Search Here',
                                suffixIcon: Icon(Icons.search)),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Expanded(
                            child: GridView.count(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              children: [
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailScreen()));
                                  },
                                ),
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {},
                                ),
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {},
                                ),
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {},
                                ),
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {},
                                ),
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {},
                                ),
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {},
                                ),
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {},
                                ),
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {},
                                ),
                                TrendingCard(
                                  imageTrending: 'assets/trending1.png',
                                  titleText: 'avocado',
                                  price: '\$3.6',
                                  onTap: () {},
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/theme.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: Container(
          height: 82,
          color: Color(0xffFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 93,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xff12B76A),
                    borderRadius: BorderRadius.circular(32)),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 206,
                height: 60,
                decoration: BoxDecoration(
                  color: lightYellowColor,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add to cart',
                      style: poppinsTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    Text(
                      '\$70.7',
                      style: poppinsTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Stack(
          children: [
            Image.asset(
              'assets/detail.png',
              height: 266,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 225,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: Color(0xffFAFEFC),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'FRUITS',
                          style: poppinsTextStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Fresh Orange',
                          style: poppinsTextStyle.copyWith(fontSize: 24),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$4.9',
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 24, color: lightYellowColor),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.remove,
                                  color: lightYellowColor,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '3',
                                  style:
                                      poppinsTextStyle.copyWith(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.add,
                                  color: lightYellowColor,
                                  size: 30,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 24.0,
                                ),
                                SizedBox(width: 4.0),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 4.0),
                                Text(
                                  '(128 reviews)',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 46,
                              width: 102,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          AssetImage('assets/avatar1.png'),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          AssetImage('assets/avatar2.png'),
                                    ),
                                  ),
                                  Positioned(
                                    left: 60,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          AssetImage('assets/avatar3.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        TabBar(
                          labelStyle: poppinsTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: semiBold,
                              color: Colors.black),
                          unselectedLabelStyle: poppinsTextStyle.copyWith(
                            fontSize: 18,
                            color: Color(0xff959A9B),
                          ),
                          indicatorColor: Colors.yellow,
                          tabs: [
                            Tab(text: "Description"),
                            Tab(text: "Review"),
                            Tab(text: "Discussion"),
                          ],
                        ),
                        SizedBox(
                          height: 200,
                          child: TabBarView(
                            children: [
                              ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      'Lorem ipsum dolor sidsfgdsfdsfdsfbsdhfbmndsbmbnfvdsnmbavfgbnmdsavfnbsdavfbnmdasvbnfvdsbnadsfdsfsdfdsfsdfsdt amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      'Lorem ipsum dolor sidsfgdsfdsfdsfbsdhfbmndsbmbnfvdsnmbavfgbnmdsavfnbsdavfbnmdasvbnfvdsbnadsfdsfsdfdsfsdfsdt amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      'Lorem ipsum dolor sidsfgdsfdsfdsfbsdhfbmndsbmbnfvdsnmbavfgbnmdsavfnbsdavfbnmdasvbnfvdsbnadsfdsfsdfdsfsdfsdt amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 53,
              left: 29,
              right: 29,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 26,
                        color: Colors.white,
                      )),
                  Icon(
                    Icons.share,
                    size: 26,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

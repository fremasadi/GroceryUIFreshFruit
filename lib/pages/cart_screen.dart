import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/theme.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> cartItems = [
    {
      'image': 'assets/banana.png',
      'category': 'FRUITS',
      'title': 'Banana',
      'price': 7.2,
      'totalPrice': 28.8,
      'quantity': 3,
      'canDelete': true,
    },
    {
      'image': 'assets/banana.png',
      'category': 'VEGETABLES',
      'title': 'Broccoli',
      'price': 6.3,
      'totalPrice': 6.3,
      'quantity': 1,
      'canDelete': true,
    },
    {
      'image': 'assets/banana.png',
      'category': 'FRUITS',
      'title': 'Grapes',
      'price': 11.4,
      'totalPrice': 22.8,
      'quantity': 2,
      'canDelete': true,
    },
    {
      'image': 'assets/banana.png',
      'category': 'MUSHROOM',
      'title': 'Oyster Mushroom',
      'price': 2.7,
      'totalPrice': 2.7,
      'quantity': 1,
      'canDelete': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item details'),
        actions: [
          TextButton(
            onPressed: () {
              // Handle place order action
            },
            child: Text(
              'Place Order',
              style: TextStyle(color: Colors.orange, fontSize: 16),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return buildCartItem(
            item['image'],
            item['category'],
            item['title'],
            item['price'],
            item['totalPrice'],
            item['quantity'],
            canDelete: item['canDelete'] ?? false,
            onDismissed: () {
              setState(() {
                cartItems.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }

  Widget buildCartItem(String imageUrl, String category, String title,
      double price, double totalPrice, int quantity,
      {bool canDelete = false, Function()? onDismissed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Dismissible(
        key: Key(title),
        direction:
            canDelete ? DismissDirection.endToStart : DismissDirection.none,
        onDismissed: (direction) {
          if (onDismissed != null) {
            onDismissed();
          }
        },
        background: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerRight,
          color: Colors.black,
          child: Icon(Icons.delete, color: Colors.white),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      imageUrl,
                      height: 113,
                      width: 93,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 75,
                      child: Container(
                        height: 40,
                        width: 93,
                        decoration: BoxDecoration(
                          color: lightYellowColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                            child: Text(
                          '\$${price.toStringAsFixed(1)}',
                          style: poppinsTextStyle.copyWith(fontSize: 18),
                        )),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '\$${totalPrice.toStringAsFixed(1)}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$${totalPrice.toStringAsFixed(1)}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle decrease quantity
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            child: Icon(Icons.remove, color: Colors.grey),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          quantity.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            // Handle increase quantity
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            child: Icon(Icons.add, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

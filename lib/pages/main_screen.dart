import 'package:flutter/material.dart';
import 'package:grocery/pages/cart_screen.dart';
import 'package:grocery/pages/category_screen.dart';
import 'package:grocery/pages/favorite_screen.dart';
import 'package:grocery/pages/home_screen.dart';
import 'package:grocery/pages/profile_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    if (_selectedIndex == index) {
      // If user taps on the tab that is already selected, we pop to first route
      _navigatorKeys[index].currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3),
          _buildOffstageNavigator(4),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:
                  _selectedIndex == 0 ? Colors.amber[800] : Color(0xffB1B1B1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Vector.png'),
              color:
                  _selectedIndex == 1 ? Colors.amber[800] : Color(0xffB1B1B1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/ic_cart.png'),
              color:
                  _selectedIndex == 2 ? Colors.amber[800] : Color(0xffB1B1B1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color:
                  _selectedIndex == 3 ? Colors.amber[800] : Color(0xffB1B1B1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              'assets/avatar1.png',
              height: 30,
              width: 30,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Color(0xffB1B1B1),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildOffstageNavigator(int index) {
    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => _widgetOptions[index],
          );
        },
      ),
    );
  }
}

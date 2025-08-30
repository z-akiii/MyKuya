import 'package:flutter/material.dart';
import 'package:mykuya/screens/home_page.dart';
import 'package:mykuya/screens/profile.dart';
import 'package:mykuya/screens/wallet.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  int _currentScreen = 0;

  void _screenNavigator(int index) {
    setState(() {
      _currentScreen = index;
    });
  }

  final List _screens = [
  HomePage(),
  Profile(),
  Wallet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: _screens[_currentScreen],

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: const Color.fromRGBO(207, 216, 220, 1),
              width: .5)
          )
        ),

        child: BottomNavigationBar(
          unselectedItemColor: const Color.fromRGBO(207, 216, 220, 1),
          selectedItemColor: Colors.grey[900],
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentScreen,
          onTap: _screenNavigator,
          items: [
        
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
              ),
        
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'),
        
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'Wallet')
        
          ]
          ),
      ),
    );
  }
}
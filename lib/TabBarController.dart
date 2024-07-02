import 'package:flutter/material.dart';
import 'package:untitled1/Home.dart';
import 'package:untitled1/Profile.dart';
import 'package:untitled1/cart.dart';

class TabBarController extends StatefulWidget {
  const TabBarController({Key? key}) : super(key: key);

  @override
  State<TabBarController> createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
     Home(),
    const cart(),
    const Profile(),
  ];

  final List<BottomNavigationBarItem> _navBarItems = [
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Image.asset("assets/images/grid.png"),
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Image.asset("assets/images/shoppingCart.png"),
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Image.asset("assets/images/user.png"),
      ),
      label: '',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _navBarItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 11),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
      ),
    );
  }
}

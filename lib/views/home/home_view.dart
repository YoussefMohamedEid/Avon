
import 'package:cosmetics/views/home/pages/cart_page.dart';
import 'package:cosmetics/views/home/pages/categories_page.dart';
import 'package:cosmetics/views/home/pages/home_page.dart';
import 'package:cosmetics/views/home/navigation_bar_widget.dart';
import 'package:cosmetics/views/home/pages/profile_page.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 3;

  final List<Widget> _pages = [
    HomePage(),
    const CategoriesPage(),
    CartPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationButton(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Padding(
        padding:
            _selectedIndex != 3
                ? EdgeInsets.only(top: 40.0, left: 13, right: 13)
                : EdgeInsets.zero,
        child: _pages[_selectedIndex],
      ),
    );
  }
}

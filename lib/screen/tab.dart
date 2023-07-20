import 'package:flutter/material.dart';
import 'package:meals_app/screen/category.dart';
import 'package:meals_app/screen/meals.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  @override
  State<TabScreen> createState() {
    return _TabScreenState();
  }
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoryScreen();
    var activePageTitle = 'Category';

    if (_selectedPageIndex == 1) {
      activePage =  MealsScreen(meals: []);
      activePageTitle = ' Your Favroites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
       backgroundColor: const Color.fromRGBO(17, 109, 110, 1),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favroite')
        ],
      ),
    );
  }
}

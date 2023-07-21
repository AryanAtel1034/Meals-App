import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(17, 109, 110, 1),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.fastfood,
                  size: 38,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Cooking Up!!',
                  style: GoogleFonts.domine(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.restaurant,
              size: 25,
            ),
            title: Text(
              'Meals',
              style: GoogleFonts.roboto(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            onTap: () {
              onSelectScreen('meal');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              size: 25,
            ),
            title: Text(
              'Filters',
              style: GoogleFonts.roboto(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            onTap: () {
              onSelectScreen('filter');
            },
          ),
        ],
      ),
    );
  }
}

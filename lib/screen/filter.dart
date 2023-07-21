import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});
  @override
  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  var _gultenFreeSet = false;
  var _lactoseFreeSet = false;
  var _vegiterianSet = false;
  var _veganSet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Filters',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _gultenFreeSet,
            onChanged: (isChecked) {
              setState(() {
                _gultenFreeSet = isChecked;
              });
            },
            title:  Text(
              'Gluten-Free',
              style: GoogleFonts.roboto(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            subtitle: const Text(
              'Only include Glutten Free items',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            activeColor: Colors.tealAccent,
            contentPadding:const  EdgeInsets.only(left: 24, right: 22),
          ),
          SwitchListTile(
            value: _lactoseFreeSet,
            onChanged: (isChecked) {
              setState(() {
                _lactoseFreeSet = isChecked;
              });
            },
            title:  Text(
              'Lactose-Free',
              style: GoogleFonts.roboto(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            subtitle: const Text(
              'Only include Lactose Free items',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            activeColor: Colors.tealAccent,
            contentPadding:const  EdgeInsets.only(left: 24, right: 22),
          ),
          SwitchListTile(
            value: _vegiterianSet,
            onChanged: (isChecked) {
              setState(() {
                _vegiterianSet = isChecked;
              });
            },
            title:  Text(
              'Vegetarian',
              style: GoogleFonts.roboto(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            subtitle: const Text(
              'Only include Vegetarian items',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            activeColor: Colors.tealAccent,
            contentPadding:const  EdgeInsets.only(left: 24, right: 22),
          ),
          SwitchListTile(
            value: _veganSet,
            onChanged: (isChecked) {
              setState(() {
                _veganSet = isChecked;
              });
            },
            title:  Text(
              'Vegan',
              style: GoogleFonts.roboto(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            subtitle: const Text(
              'Only include Vegan items',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            activeColor: Colors.tealAccent,
            contentPadding:const  EdgeInsets.only(left: 24, right: 22),
          ),
        ],
      ),
    );
  }
}

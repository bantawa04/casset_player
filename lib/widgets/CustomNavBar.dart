import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple.shade800,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_fill_outlined),
              label: "Now Playing"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: "Favourites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline), label: "Profile"),
        ]);
  }
}

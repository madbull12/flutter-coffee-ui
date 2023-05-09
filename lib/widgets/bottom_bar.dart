import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 80,
      decoration: BoxDecoration(color: const Color(0xff212325), boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.home_filled, color: Color(0xFFC67C4E), size: 35),
          Icon(Icons.favorite, color: Colors.white, size: 35),
          Icon(Icons.shopping_bag_rounded, color: Colors.white, size: 35),
          Icon(Icons.notifications, color: Colors.white, size: 35),
        ],
      ),
    );
  }
}

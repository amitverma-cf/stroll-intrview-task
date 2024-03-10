import 'package:flutter/material.dart';

import 'badge_item.dart';
import 'custom_painters/chat_painter.dart';
import 'custom_painters/fire_painter.dart';
import 'custom_painters/home_painter.dart';
import 'custom_painters/profile_painter.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: BadgeItem(
              icon: CustomPaint(
                size: const Size(28, 29),
                painter: HomeIconPaint(),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BadgeItem(
              icon: CustomPaint(
                size: const Size(22.53, 29),
                painter: FireIconPaint(),
              ),
              showBadge: true,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BadgeItem(
              icon: CustomPaint(
                size: const Size(26.21, 24.24),
                painter: ChatIconPaint(),
              ),
              showBadge: true,
              badge: '10',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BadgeItem(
              icon: CustomPaint(
                size: const Size(44, 44),
                painter: ProfileIconPaint(),
              ),
              badge: '',
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.primary,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black87,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}

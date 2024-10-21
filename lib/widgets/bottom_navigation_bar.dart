import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildSvgIcon(
              'assets/images/Дом.svg',
              width: 30,
              height: 30,
              isSelected: selectedIndex == 0,
            ),
            activeIcon: _buildSvgIcon(
              'assets/images/Дом.svg',
              width: 30,
              height: 30,
              color: const Color(0xFF1A6FEE),
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: _buildSvgIcon(
              'assets/images/Корзина.svg',
              width: 24,
              height: 24,
              isSelected: selectedIndex == 1,
            ),
            activeIcon: _buildSvgIcon(
              'assets/images/Корзина.svg',
              width: 24,
              height: 24,
              color: const Color(0xFF1A6FEE),
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: _buildSvgIcon(
              'assets/images/Пользователь.svg',
              width: 32,
              height: 32,
              isSelected: selectedIndex == 2,
            ),
            activeIcon: _buildSvgIcon(
              'assets/images/Пользователь.svg',
              width: 32,
              height: 32,
              color: const Color(0xFF1A6FEE),
            ),
            label: 'Профиль',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: const Color(0xFF1A6FEE),
        unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 34,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
      ),
    );
  }

  Widget _buildSvgIcon(String assetName, {double? width, double? height, Color? color, bool isSelected = false}) {
    return SvgPicture.asset(
      assetName,
      color: color ?? (isSelected ? const Color(0xFF1A6FEE) : Colors.grey),
      width: width,
      height: height,
    );
  }
}
import 'dart:html';

import 'package:cashmatrix/colors/app_colors.dart';
import 'package:cashmatrix/screens/ContactScreen.dart';
import 'package:cashmatrix/screens/HomeScreen.dart';
import 'package:cashmatrix/screens/ProfileScreen.dart';
import 'package:cashmatrix/screens/TransactionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selecetedIndex = 0;

  final _screens = [
    HomeScreen(),
    TransactionScreen(),
    ProfileScreen(),
    ContactScreen()
    // const Scaffold(
    //   body: Center(
    //     child: Text('Transaction'),
    //   ),
    // ),
    // const Scaffold(
    //   body: Center(
    //     child: Text('Profile'),
    //   ),
    // ),
    // const Scaffold(
    //   body: Center(
    //     child: Text('Contact'),
    //   ),
    // ),
    // const Scaffold(
    //   body: Center(
    //     child: Text('Library'),
    //   ),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: _screens
              .asMap()
              .map(
                (i, screen) => MapEntry(
                  i,
                  Offstage(
                    offstage: _selecetedIndex != i,
                    child: screen,
                  ),
                ),
              )
              .values
              .toList()),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selecetedIndex,
          onTap: (i) => setState(() {
                _selecetedIndex = i;
              }),
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          fixedColor: AppColors.MAIN_COLOR,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: AppColors.MAIN_COLOR,
              ),
              activeIcon: Icon(
                Icons.home,
                color: AppColors.MAIN_COLOR,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.currency_exchange_sharp,
                color: AppColors.MAIN_COLOR,
              ),
              activeIcon: Icon(
                Icons.currency_exchange_outlined,
                color: AppColors.MAIN_COLOR,
              ),
              label: 'Transaction',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: AppColors.MAIN_COLOR,
              ),
              activeIcon: Icon(
                Icons.person,
                color: AppColors.MAIN_COLOR,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions_outlined,
                color: AppColors.MAIN_COLOR,
              ),
              activeIcon: Icon(
                Icons.subscriptions,
                color: AppColors.MAIN_COLOR,
              ),
              label: 'Contact',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.video_library_outlined),
            //   activeIcon: Icon(Icons.video_library),
            //   label: 'Library',
            // ),
          ]),
    );
  }
}

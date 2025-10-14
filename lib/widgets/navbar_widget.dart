import 'package:flutter/material.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int currentIndex = 0;

  void incrementIndex(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(
          icon: Icon(Icons.pages),
          label: 'About',
          tooltip: 'Olá!',
        ),
      ],
      selectedIndex: currentIndex,
      onDestinationSelected: incrementIndex,
    );
  }
}

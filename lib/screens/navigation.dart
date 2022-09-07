import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int currentActiveIndex = 0;

  final _screens = [
    const HomeScreen(),
    const Scaffold(body: Center(child: Text("Shorts"))),
    const Scaffold(body: Center(child: Text("Create"))),
    const Scaffold(body: Center(child: Text("Subscriptions"))),
    const Scaffold(body: Center(child: Text("Library"))),
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
                  Offstage(offstage: currentActiveIndex != i, child: screen),
                ),
              )
              .values
              .toList()),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentActiveIndex,
          onTap: (index) => setState(() => currentActiveIndex = index),
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call_outlined),
                label: "Shorts",
                activeIcon: Icon(Icons.video_call)),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline, size: 36),
              label: "",
              activeIcon: Icon(Icons.add_circle, size: 36),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined),
                label: "Subscriptions",
                activeIcon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                label: "Library",
                activeIcon: Icon(Icons.video_library)),
          ]),
    );
  }
}

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'search_page.dart';
import 'add_page.dart';
import 'community_page.dart';
import 'profile_page.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    SearchPage(),
    AddPage(),
    CommunityPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ផ្ទះ'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'ស្វែងរក'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 36), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'សហគមន៍'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'គណនី'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

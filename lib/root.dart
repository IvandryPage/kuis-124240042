import 'package:flutter/material.dart';
import 'package:kuis_mobile_124240042/pages/homepage.dart';
import 'package:kuis_mobile_124240042/pages/profile.dart';

class RootPage extends StatefulWidget {
  final String username;

  const RootPage({super.key, required this.username});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0
          ? HomePage(username: widget.username)
          : ProfilePage(username: widget.username),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

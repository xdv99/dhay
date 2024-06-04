import 'package:flutter/material.dart';
import '../models/default_colors.dart';
import 'main_screens/community_screen.dart';
import 'main_screens/home_screen.dart';
import 'main_screens/notes_screen.dart';
import 'main_screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      HomeScreen(),
      NotesScreen(),
      CommunityScreen(),
      ProfileScreen()
    ];

    List<BottomNavigationBarItem> items = const [
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(Icons.event_note_outlined), label: "Notes"),
      BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
      BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded), label: "Profile"),
    ];

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: items,
          elevation: 0,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: regularPurple,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
